package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.List;
import java.util.Optional;

public class RelationToBinaryMutator extends Mutator {
    /*
        A ~> A op B
     */
    private RelationToBinaryMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original + "->" + expr;
        this.setBlacklisted(LocationAggregator.BreadthBottomUp(original.expr).stream().map(l -> l.expr));
    }

    private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr) {
        if (original.expr.type().intersects(expr.type()) && !expr.equals(original.expr.deNOP())) {
            accumulator.add(new RelationToBinaryMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.PLUS)));
            accumulator.add(new RelationToBinaryMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.MINUS)));
            accumulator.add(new RelationToBinaryMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.INTERSECT)));
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
        return Optional.of("Something extra is required, try using a binary operator.");
    }
}