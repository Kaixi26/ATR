package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Type;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

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

        for (ExprUnary.Op op : Mutator.uops_rel2rel) {
            accumulator.add(new RelationToUnaryMutator(original, ExprMaker.make(original.expr, op)));
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Add a binary or unary operator.");
    }
}
