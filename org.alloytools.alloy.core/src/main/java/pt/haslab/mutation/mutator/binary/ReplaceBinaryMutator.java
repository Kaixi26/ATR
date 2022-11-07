package pt.haslab.mutation.mutator.binary;

import edu.mit.csail.sdg.ast.ExprBinary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class ReplaceBinaryMutator extends Mutator {
    /*
        bop  :: {A} * {B} -> {C}
        bop' :: {A} * {B} -> {C}
        A [bop] B ~> A [bop'] B
     */
    private ReplaceBinaryMutator(Location original, ExprBinary.Op op) {
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
                    accumulator.add(new ReplaceBinaryMutator(original, op));
                }
            }
        }
        if (Mutator.bops_setset2set.contains(originalExpr.op)) {
            for (ExprBinary.Op op : Mutator.bops_setset2set) {
                if (op != originalExpr.op) {
                    accumulator.add(new ReplaceBinaryMutator(original, op));
                }
            }
        }
        if (Mutator.bops_setset2bool.contains(originalExpr.op)){
            for (ExprBinary.Op op : Mutator.bops_setset2bool) {
                if (op != originalExpr.op) {
                    accumulator.add(new ReplaceBinaryMutator(original, op));
                }
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Binary operator has to be changed or removed.");
    }
}
