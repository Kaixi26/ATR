package pt.haslab.mutation.mutator.binary;

import edu.mit.csail.sdg.ast.ExprBinary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.LocationAggregator;

import java.util.List;
import java.util.Optional;

public class RemoveBinaryMutator extends Mutator {
    /*
        A [bop] B ~> A
        A [bop] B ~> B
     */

    private enum Branch {
        LEFT, RIGHT
    }

    private RemoveBinaryMutator(Location original, Branch branch) {
        ExprBinary originalExpr = (ExprBinary) original.expr;
        this.original = original;
        switch (branch) {
            case LEFT:
                this.mutant = originalExpr.left;
                this.name = "TAKE_LEFT";
                this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr.right).stream().map(l -> l.expr));
                break;
            case RIGHT:
                this.mutant = originalExpr.right;
                this.name = "TAKE_RIGHT";
                this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr.left).stream().map(l -> l.expr));
                break;
        }
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        ExprBinary originalExpr = (ExprBinary) original.expr;
        if (originalExpr.type() == originalExpr.left.type()) {
            accumulator.add(new RemoveBinaryMutator(original, RemoveBinaryMutator.Branch.LEFT));
        }
        if (originalExpr.type() == originalExpr.right.type()) {
            accumulator.add(new RemoveBinaryMutator(original, RemoveBinaryMutator.Branch.RIGHT));
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Binary operator has to be changed or removed.");
    }
}
