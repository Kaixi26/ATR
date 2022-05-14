package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;

public class RelationToUnaryMutator extends Mutator {
    private RelationToUnaryMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
    }

    public List<Mutator> getGeneratedMutators() {
        return Generator.generateMutators(new Location(this.mutant, this.original.insideDecl, this.original.vars), this.sigs);
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        if (original.expr.type().arity() != 2) {
            return;
        }

        accumulator.add(new RelationToUnaryMutator(original, ExprMaker.make(original.expr, ExprUnary.Op.TRANSPOSE)));
    }
}
