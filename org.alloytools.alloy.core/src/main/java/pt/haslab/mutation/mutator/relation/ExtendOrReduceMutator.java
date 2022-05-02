package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.InsertJoinMutator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;

public class ExtendOrReduceMutator extends Mutator {
    private ExtendOrReduceMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
    }

    private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr) {
        if (expr.type().equals(original.expr.type()) && !expr.equals(original.expr)) {
            accumulator.add(new ExtendOrReduceMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.PLUS)));
            accumulator.add(new ExtendOrReduceMutator(original, ExprMaker.make(original.expr, expr, ExprBinary.Op.MINUS)));
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        switch (original.expr.type().arity()) {
            case 1:
                for (Sig sig : sigs) {
                    addIfCompatible(accumulator, original, sig);
                }
                for (ExprHasName var : original.vars) {
                    if (var instanceof ExprVar) {
                        addIfCompatible(accumulator, original, var);
                    }
                }
            case 2:
                for (Sig.Field field : fields) {
                    addIfCompatible(accumulator, original, field);
                }
            default:
                break;
        }
    }
}
