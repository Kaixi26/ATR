package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.List;

public class ExprQtMutator {

    /*
        [qtop] Decls | expr ~> [qtop'] Decls | expr
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(ExprQt original, ExprQt.Op op) {
            this.original = original;
            this.mutant = ExprMaker.make(original.decls, original.sub, op);
            this.name = original.op.name() + "->" + op.name();
        }

        public static void generate(List<Mutator> accumulator, ExprQt original) {
            if (!Mutator.exprqts_expr2bool.contains(original.op)) {
                return;
            }
            for (ExprQt.Op op : Mutator.exprqts_expr2bool) {
                if (op != original.op) {
                    accumulator.add(new ReplaceOperator(original, op));
                }
            }
        }
    }

    /*
        [qtop] A | expr ~> [uop] A
     */
    private static class ToUnaryOperator extends Mutator {
        private ToUnaryOperator(ExprQt original, ExprUnary mutant) {
            this.original = original;
            this.mutant = mutant;
            this.name = "Qt_" + original.op.name() + "->" + "Un_" + mutant.op.name();
            for (Location location : LocationAggregator.BreadthBottomUp(original)) {
                this.blacklisted.add(location.expr);
            }
        }

        public static void generate(List<Mutator> accumulator, ExprQt original, ConstList<Sig> sigs) {
            ExprUnary.Op mutantOp = opQt2opUnary(original.op);
            if (mutantOp == null) {
                return;
            }
            for (Decl d : original.decls) {
                for (Sig sig : sigs) {
                    if (d.get().type().equals(sig.type())) {
                        ExprUnary mutant = ExprMaker.make(ExprMaker.make(sig, ExprUnary.Op.NOOP), mutantOp);
                        accumulator.add(new ToUnaryOperator(original, mutant));
                    }
                }
            }
        }

        private static ExprUnary.Op opQt2opUnary(ExprQt.Op op) {
            switch (op) {
                case ONE:
                    return ExprUnary.Op.ONE;
                case SOME:
                    return ExprUnary.Op.SOME;
                case NO:
                    return ExprUnary.Op.NO;
                case LONE:
                    return ExprUnary.Op.LONE;
                default:
                    return null;
            }
        }
    }

    public static void generate(List<Mutator> accumulator, ExprQt expr, ConstList<Sig> sigs) {
        ReplaceOperator.generate(accumulator, expr);
        ToUnaryOperator.generate(accumulator, expr, sigs);
    }
}
