package pt.haslab.mutation.mutator.unary;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class ReplaceSetUnderUnaryMutator extends Mutator {
    /*
        (A can be any expression)
        no A ~> no B
     */
    private ReplaceSetUnderUnaryMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
        this.setBlacklisted(LocationAggregator.BreadthBottomUp(original.expr).stream().map(x -> x.expr));
    }

    public List<Mutator> getGeneratedMutators() {
        List<Mutator> ret = new ArrayList<>();
        ret.addAll(Generator.generateMutators(new Location(this.mutant, this.original.insideDecl, this.original.vars), this.sigs));
        ret.addAll(Generator.generateMutators(new Location(((ExprUnary) this.mutant).sub, this.original.insideDecl, this.original.vars), this.sigs));
        return ret;
    }

    private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr, ConstList<Sig> sigs) {
        ExprUnary originalExpr = (ExprUnary) original.expr;
        if (!originalExpr.sub.equals(expr) && !expr.type().equals(Sig.NONE.type())) {
            accumulator.add(new ReplaceSetUnderUnaryMutator(original, ExprMaker.make(expr, originalExpr.op)));
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        ExprUnary originalExpr = (ExprUnary) original.expr;
        if (originalExpr.sub.type().arity() > 0) {
            for (Sig sig : sigs) {
                addIfCompatible(accumulator, original, sig, sigs);
            }
            for (ExprHasName var : original.vars) {
                if (var instanceof ExprVar) {
                    addIfCompatible(accumulator, original, var, sigs);
                }
            }
            for (Sig.Field field : fields) {
                addIfCompatible(accumulator, original, field, sigs);
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Expression under unary operator has to be changed.");
    }
}
