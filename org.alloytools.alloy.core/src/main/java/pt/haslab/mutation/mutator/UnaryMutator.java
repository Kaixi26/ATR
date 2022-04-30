package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class UnaryMutator {

    /*
        UOp expr ~> expr
    */
    private static class RemoveOperator extends Mutator {
        private RemoveOperator(Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            this.original = original;
            this.mutant = originalExpr.sub;
            this.blacklisted.add(originalExpr);
            this.name = originalExpr.op.name();
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (originalExpr.op == ExprUnary.Op.NOOP || originalExpr.type() != originalExpr.sub.type()) {
                return;
            }
            accumulator.add(new RemoveOperator(original));
        }
    }

    /*
        (NOOP Sig) ~> (NOOP Sig)'
        BooleanExpr ~> UOp BooleanExpr
     */
    private static class InsertOperator extends Mutator {
        private InsertOperator(Location original, ExprUnary expr) {
            this.original = original;
            this.mutant = expr;
            this.name = expr.op.name();
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (originalExpr.op == ExprUnary.Op.NOOP && originalExpr.sub instanceof Sig) {
                accumulator.add(new InsertOperator(original, (ExprUnary) originalExpr.prime()));
            }

            if (originalExpr.type().is_bool) {
                for (ExprUnary.Op op : Mutator.uops_bool2bool) {
                    accumulator.add(new InsertOperator(original, ExprMaker.make(originalExpr, op)));
                }
            }
        }
    }

    /*
        (UOp A) ~> (UOp' A)
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(Location original, ExprUnary.Op op) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            this.original = original;
            this.name = originalExpr.op.name() + "->" + op.name();
            this.mutant = ExprMaker.make(originalExpr.sub, op);
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (Mutator.uops_set2bool.contains(originalExpr.op)) {
                for (ExprUnary.Op op : Mutator.uops_set2bool) {
                    if (op != originalExpr.op) {
                        accumulator.add(new ReplaceOperator(original, op));
                    }
                }
            }
        }

    }

    public static void generate(List<Mutator> accumulator, Location original) {
        RemoveOperator.generate(accumulator, original);
        InsertOperator.generate(accumulator, original);
        ReplaceOperator.generate(accumulator, original);
    }
}
