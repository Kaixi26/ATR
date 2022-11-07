package pt.haslab.mutation.mutator.unary;

import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class ReplaceUnaryOperatorMutator extends Mutator {
    private ReplaceUnaryOperatorMutator(Location original, ExprUnary.Op op) {
        ExprUnary originalExpr = (ExprUnary) original.expr;
        this.original = original;
        this.name = originalExpr.op.name() + "->" + op.name();
        this.mutant = ExprMaker.make(originalExpr.sub, op);
    }

    public List<Mutator> getGeneratedMutators() {
        return Generator.generateMutators(new Location(this.mutant, this.original.insideDecl, this.original.vars), this.sigs);
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        ExprUnary originalExpr = (ExprUnary) original.expr;
        if (Mutator.uops_rel2bool.contains(originalExpr.op)) {
            for (ExprUnary.Op op : Mutator.uops_rel2bool) {
                if (op != originalExpr.op) {
                    accumulator.add(new ReplaceUnaryOperatorMutator(original, op));
                }
            }
        }

        if (Mutator.uops_rel2rel.contains(originalExpr.op)) {
            for (ExprUnary.Op op : Mutator.uops_rel2rel) {
                if (op != originalExpr.op) {
                    accumulator.add(new ReplaceUnaryOperatorMutator(original, op));
                }
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Unary operator has to be changed or removed.");
    }
}
