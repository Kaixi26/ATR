package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ReplaceRelationMutator extends Mutator {

    private ReplaceRelationMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
    }


    @Override
    public List<Mutator> getGeneratedMutators() {
        List<Mutator> ret = new ArrayList<>();
        InsertJoinMutator.generate(ret, new Location(mutant, original.insideDecl, original.vars), sigs, Generator.fieldsFromSigs(sigs));
        return ret;
    }

    private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr) {
        if (!expr.deNOP().equals(original.expr.deNOP())) {
            accumulator.add(new ReplaceRelationMutator(original, ExprMaker.make(expr, ExprUnary.Op.NOOP)));
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
        if (original.expr.type().arity() != 1) {
            return;
        }

        for (Sig sig : sigs) {
            addIfCompatible(accumulator, original, sig);
        }
        for (ExprHasName var : original.vars) {
            if (var instanceof ExprVar) {
                addIfCompatible(accumulator, original, var);
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("A different relation is required.");
    }
}
