package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;

import java.util.List;

public class InsertPrimeMutator extends Mutator {
    /*
        A ~> A'
     */
    private InsertPrimeMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        if (original.expr.type().arity() != 1) {
            return;
        }

        accumulator.add(new InsertPrimeMutator(original, original.expr.prime()));
    }
}
