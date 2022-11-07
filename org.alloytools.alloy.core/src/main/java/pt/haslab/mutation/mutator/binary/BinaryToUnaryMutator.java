package pt.haslab.mutation.mutator.binary;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class BinaryToUnaryMutator extends Mutator {
    /*
        [bop]  :: {Set} * {Set} -> {Bool}
        [bop'] :: {Set} * {Set} -> {Set}
        [uop]  :: {Set} -> {Bool}
        A [bop] B ~> [uop] (A [bop'] B)
     */
    private BinaryToUnaryMutator(ExprUnary mutant, Location original) {
        ExprBinary originalExpr = (ExprBinary) original.expr;
        this.original = original;
        this.name = originalExpr.op.name() + "->" + mutant;
        this.mutant = mutant;
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        ExprBinary originalExpr = (ExprBinary) original.expr;
        if (bops_setset2bool.contains(originalExpr.op)) {
            for (ExprBinary.Op bop : bops_setset2set) {
                for (ExprUnary.Op uop : uops_rel2bool) {
                    Expr exprBin = ExprMaker.make(originalExpr.left, originalExpr.right, bop);
                    ExprUnary mutant = ExprMaker.make(exprBin, uop);
                    accumulator.add(new BinaryToUnaryMutator(mutant, original));
                }
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Transform into a unary expression.");
    }
}
