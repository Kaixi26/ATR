package pt.haslab.mutation.mutator.unary;

import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;

import java.util.List;
import java.util.Optional;

public class RemoveUnaryOperatorMutator extends Mutator {
    /*
        UOp expr ~> expr
    */
    private RemoveUnaryOperatorMutator(Location original) {
        ExprUnary originalExpr = (ExprUnary) original.expr;
        this.original = original;
        this.mutant = originalExpr.sub;
        this.name = originalExpr.op.name();
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        ExprUnary originalExpr = (ExprUnary) original.expr;

        if (originalExpr.op == ExprUnary.Op.NOOP || !originalExpr.type().intersects(originalExpr.sub.type())) {
            return;
        }
        accumulator.add(new RemoveUnaryOperatorMutator(original));
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Unary operator has to be changed or removed.");
    }
}
