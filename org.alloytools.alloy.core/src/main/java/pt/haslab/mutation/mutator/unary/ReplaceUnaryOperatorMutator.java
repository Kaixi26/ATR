package pt.haslab.mutation.mutator.unary;

import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;

public class ReplaceUnaryOperatorMutator extends Mutator {
    private ReplaceUnaryOperatorMutator(Location original, ExprUnary.Op op) {
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
                    accumulator.add(new ReplaceUnaryOperatorMutator(original, op));
                }
            }
        }
    }

}
