package pt.haslab.mutation.mutator.bool;

import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class InsertUnaryMutator extends Mutator {
    private InsertUnaryMutator(Location original, ExprUnary expr) {
        this.original = original;
        this.mutant = expr;
        this.name = expr.op.name();
    }

    public static void generate(List<Mutator> accumulator, Location original) {

        if (original.expr.type().is_bool) {
            for (ExprUnary.Op op : Mutator.uops_bool2bool) {
                accumulator.add(new InsertUnaryMutator(original, ExprMaker.make(original.expr, op)));
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Insert an operator.");
    }
}