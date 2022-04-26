package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


public class BinaryMutator {

    /*
        bop :: {A} * {B} -> {A}
        A [bop] B ~> A

        bop :: {A} * {B} -> {B}
        A [bop] B ~> B
     */
    private static class RemoveOperator extends Mutator {
        private enum Branch {
            LEFT, RIGHT
        }

        private RemoveOperator(ExprBinary expr, Branch branch) {
            this.original = expr;
            switch (branch) {
                case LEFT:
                    this.mutant = expr.left;
                    this.name = "TAKE_LEFT";
                    this.blacklisted.addAll(LocationAggregator.BreadthBottomUp(expr.right).stream().map(l -> l.expr).collect(Collectors.toList()));
                    break;
                case RIGHT:
                    this.mutant = expr.right;
                    this.name = "TAKE_RIGHT";
                    this.blacklisted.addAll(LocationAggregator.BreadthBottomUp(expr.left).stream().map(l -> l.expr).collect(Collectors.toList()));
                    break;
            }
        }

        public static void generate(List<Mutator> accumulator, ExprBinary expr) {
            if (expr.type() == expr.left.type()) {
                accumulator.add(new RemoveOperator(expr, Branch.LEFT));
            }
            if (expr.type() == expr.right.type()) {
                accumulator.add(new RemoveOperator(expr, Branch.RIGHT));
            }
        }
    }

    /*
        bop  :: {A} * {B} -> {C}
        bop' :: {A} * {B} -> {C}
        A [bop] B ~> A [bop'] B
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(ExprBinary original, ExprBinary.Op op) {
            this.original = original;
            this.name = original.op.name() + "->" + op.name();
            this.mutant = ExprMaker.make(original.left, original.right, op);
        }

        public static void generate(List<Mutator> accumulator, ExprBinary expr) {
            if (Mutator.bops_boolbool2bool.contains(expr.op)) {
                for (ExprBinary.Op op : Mutator.bops_boolbool2bool) {
                    if (op != expr.op) {
                        accumulator.add(new ReplaceOperator(expr, op));
                    }
                }
            }
            if (Mutator.bops_setset2set.contains(expr.op)) {
                for (ExprBinary.Op op : Mutator.bops_setset2set) {
                    if (op != expr.op) {
                        accumulator.add(new ReplaceOperator(expr, op));
                    }
                }
            }
        }
    }

    /*
        [bop]  :: {Set} * {Set} -> {Bool}
        [bop'] :: {Set} * {Set} -> {Set}
        [uop]  :: {Set} -> {Bool}
        A [bop] B ~> [uop] (A [bop'] B)
     */
    private static class ToUnaryOperator extends Mutator {
        private ToUnaryOperator(ExprUnary mutant, ExprBinary original) {
            this.original = original;
            this.name = original.op.name() + "->" + mutant;
            this.mutant = mutant;
        }

        public static void generate(List<Mutator> accumulator, ExprBinary expr) {
            if (bops_setset2bool.contains(expr.op)) {
                for (ExprBinary.Op bop : bops_setset2set) {
                    for (ExprUnary.Op uop : uops_set2bool) {
                        Expr exprBin = ExprMaker.make(expr.left, expr.right, bop);
                        ExprUnary mutant = ExprMaker.make(exprBin, uop);
                        accumulator.add(new ToUnaryOperator(mutant, expr));
                    }
                }
            }
        }

    }

    public static void generate(List<Mutator> accumulator, ExprBinary expr) {
        RemoveOperator.generate(accumulator, expr);
        ReplaceOperator.generate(accumulator, expr);
        ToUnaryOperator.generate(accumulator, expr);
    }
}
