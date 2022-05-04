package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
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

        private RemoveOperator(Location original, Branch branch) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            this.original = original;
            switch (branch) {
                case LEFT:
                    this.mutant = originalExpr.left;
                    this.name = "TAKE_LEFT";
                    this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr.right).stream().map(l -> l.expr).collect(Collectors.toList()));
                    break;
                case RIGHT:
                    this.mutant = originalExpr.right;
                    this.name = "TAKE_RIGHT";
                    this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr.left).stream().map(l -> l.expr).collect(Collectors.toList()));
                    break;
            }
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            if (originalExpr.type() == originalExpr.left.type()) {
                accumulator.add(new RemoveOperator(original, Branch.LEFT));
            }
            if (originalExpr.type() == originalExpr.right.type()) {
                accumulator.add(new RemoveOperator(original, Branch.RIGHT));
            }
        }
    }

    /*
        bop  :: {A} * {B} -> {C}
        bop' :: {A} * {B} -> {C}
        A [bop] B ~> A [bop'] B
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(Location original, ExprBinary.Op op) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            this.original = original;
            this.name = originalExpr.op.name() + "->" + op.name();
            this.mutant = ExprMaker.make(originalExpr.left, originalExpr.right, op);
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            if (Mutator.bops_boolbool2bool.contains(originalExpr.op)) {
                for (ExprBinary.Op op : Mutator.bops_boolbool2bool) {
                    if (op != originalExpr.op) {
                        accumulator.add(new ReplaceOperator(original, op));
                    }
                }
            }
            if (Mutator.bops_setset2set.contains(originalExpr.op)) {
                for (ExprBinary.Op op : Mutator.bops_setset2set) {
                    if (op != originalExpr.op) {
                        accumulator.add(new ReplaceOperator(original, op));
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
        private ToUnaryOperator(ExprUnary mutant, Location original) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            this.original = original;
            this.name = originalExpr.op.name() + "->" + mutant;
            this.mutant = mutant;
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprBinary originalExpr = (ExprBinary) original.expr;
            if (bops_setset2bool.contains(originalExpr.op)) {
                for (ExprBinary.Op bop : bops_setset2set) {
                    for (ExprUnary.Op uop : uops_set2bool) {
                        Expr exprBin = ExprMaker.make(originalExpr.left, originalExpr.right, bop);
                        ExprUnary mutant = ExprMaker.make(exprBin, uop);
                        accumulator.add(new ToUnaryOperator(mutant, original));
                    }
                }
            }
        }

    }

    public static void generate(List<Mutator> accumulator, Location original) {
        RemoveOperator.generate(accumulator, original);
        ReplaceOperator.generate(accumulator, original);
        ToUnaryOperator.generate(accumulator, original);
    }
}
