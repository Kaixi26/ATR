package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
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
        private RemoveOperator(ExprUnary expr) {
            this.original = expr;
            this.mutant = expr.sub;
            this.blacklisted.add(expr);
            this.name = expr.op.name();
        }

        public static void generate(List<Mutator> accumulator, ExprUnary expr) {
            if (expr.op == ExprUnary.Op.NOOP || expr.type() != expr.sub.type()) {
                return;
            }
            accumulator.add(new RemoveOperator(expr));
        }
    }

    /*
        (NOOP Sig) ~> (NOOP Sig)'
        BooleanExpr ~> UOp BooleanExpr
     */
    private static class InsertOperator extends Mutator {
        private InsertOperator(ExprUnary expr, Expr original) {
            this.original = original;
            this.mutant = expr;
            this.name = expr.op.name();
        }

        public static void generate(List<Mutator> accumulator, ExprUnary expr) {
            if (expr.op == ExprUnary.Op.NOOP && expr.sub instanceof Sig) {
                accumulator.add(new InsertOperator((ExprUnary) expr.prime(), expr));
            }

            if (expr.type().is_bool) {
                for (ExprUnary.Op op : Mutator.uops_bool2bool) {
                    accumulator.add(new InsertOperator(ExprMaker.make(expr, op), expr));
                }
            }
        }
    }

    /*
        (UOp A) ~> (UOp' A)
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(ExprUnary expr, ExprUnary.Op op) {
            this.original = expr;
            this.name = expr.op.name() + "->" + op.name();
            this.mutant = ExprMaker.make(expr.sub, op);
        }

        public static void generate(List<Mutator> accumulator, ExprUnary expr) {
            if (Mutator.uops_set2bool.contains(expr.op)) {
                for (ExprUnary.Op op : Mutator.uops_set2bool) {
                    if (op != expr.op) {
                        accumulator.add(new ReplaceOperator(expr, op));
                    }
                }
            }
        }

    }

    public static void generate(List<Mutator> accumulator, ExprUnary expr) {
        RemoveOperator.generate(accumulator, expr);
        InsertOperator.generate(accumulator, expr);
        ReplaceOperator.generate(accumulator, expr);
    }
}
