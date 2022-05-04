package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.List;
import java.util.stream.Collectors;

public class ExprQtMutator {

    /*
        [qtop] Decls | expr ~> [qtop'] Decls | expr
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(Location original, ExprQt.Op op) {
            ExprQt originalExpr = (ExprQt) original.expr;
            this.original = original;
            this.mutant = ExprMaker.make(originalExpr.decls, originalExpr.sub, op);
            this.name = originalExpr.op.name() + "->" + op.name();
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprQt originalExpr = (ExprQt) original.expr;
            if (!Mutator.exprqts_expr2bool.contains(originalExpr.op)) {
                return;
            }
            for (ExprQt.Op op : Mutator.exprqts_expr2bool) {
                if (op != originalExpr.op) {
                    accumulator.add(new ReplaceOperator(original, op));
                }
            }
        }
    }

    /*
        [qtop] A | expr ~> [uop] A
     */
    private static class ToUnaryOperator extends Mutator {
        private ToUnaryOperator(Location original, ExprUnary mutant) {
            ExprQt originalExpr = (ExprQt) original.expr;
            this.original = original;
            this.mutant = mutant;
            this.name = "Qt_" + originalExpr.op.name() + "->" + "Un_" + mutant.op.name();
            this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr)
                    .stream().map(l -> l.expr).collect(Collectors.toList()));
        }

        public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
            ExprQt originalExpr = (ExprQt) original.expr;
            ExprUnary.Op mutantOp = opQt2opUnary(originalExpr.op);
            if (mutantOp == null) {
                return;
            }
            for (Decl d : originalExpr.decls) {
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

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
        ReplaceOperator.generate(accumulator, original);
        ToUnaryOperator.generate(accumulator, original, sigs);
    }
}
