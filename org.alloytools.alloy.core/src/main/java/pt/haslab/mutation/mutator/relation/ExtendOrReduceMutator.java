package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class ExtendOrReduceMutator extends Mutator {

    private ExtendOrReduceMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
    }

    @Override
    public List<Mutator> getGeneratedMutators() {
        return Generator.generateMutators(new Location(this.mutant, this.original.insideDecl, this.original.vars), this.sigs);
    }

    private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr) {
        if (original.expr.type().intersects(expr.type()) && !expr.equals(original.expr.deNOP())) {
            accumulator.add(new ExtendOrReduceMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.PLUS)));
            accumulator.add(new ExtendOrReduceMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.MINUS)));
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        switch (original.expr.type().arity()) {
            case 0:
                return;
            case 1:
                for (Sig sig : sigs) {
                    addIfCompatible(accumulator, original, sig);
                }
                for (ExprHasName var : original.vars) {
                    if (var instanceof ExprVar) {
                        addIfCompatible(accumulator, original, var);
                    }
                }
            default:
                for (Sig.Field field : fields) {
                    if (field.type().intersects(original.expr.type())) {
                        addIfCompatible(accumulator, original, field);
                    }
                }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("A different relation is required.");
    }
}
