package pt.haslab.mutation.mutator.quantifier;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Decl;
import edu.mit.csail.sdg.ast.ExprQt;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.List;
import java.util.Optional;

public class QtToUnaryMutator extends Mutator {
    /*
        [qtop] A | expr ~> [uop] A
     */
    private QtToUnaryMutator(Location original, ExprUnary mutant) {
        ExprQt originalExpr = (ExprQt) original.expr;
        this.original = original;
        this.mutant = mutant;
        this.name = "Qt_" + originalExpr.op.name() + "->" + "Un_" + mutant.op.name();
        this.setBlacklisted(LocationAggregator.BreadthBottomUp(originalExpr)
                .stream().map(l -> l.expr));
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
        ExprQt originalExpr = (ExprQt) original.expr;
        ExprUnary.Op mutantOp = opQt2opUnary(originalExpr.op);
        if (mutantOp == null) {
            return;
        }
        for (Decl d : originalExpr.decls) {
            for (Sig sig : sigs) {
                if (d.get().type().equals(sig.type())) {
                    ExprUnary mutant = ExprMaker.make(ExprMaker.make(sig, ExprUnary.Op.NOOP), mutantOp);
                    accumulator.add(new QtToUnaryMutator(original, mutant));
                }
            }
        }
    }

    private static ExprUnary.Op opQt2opUnary(ExprQt.Op op) {
        switch (op) {
            case ONE:
                return ExprUnary.Op.ONE;
            case SOME:
                return ExprUnary.Op.SOME;
            case NO:
                return ExprUnary.Op.NO;
            case LONE:
                return ExprUnary.Op.LONE;
            default:
                return null;
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Quantifier has to be changed.");
    }
}
