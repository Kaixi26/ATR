package pt.haslab.mutation.mutator.quantifier;

import edu.mit.csail.sdg.ast.ExprQt;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;
import java.util.Optional;

public class ReplaceQtOperator extends Mutator {
    /*
        [qtop] Decls | expr ~> [qtop'] Decls | expr
     */
    private ReplaceQtOperator(Location original, ExprQt.Op op) {
        ExprQt originalExpr = (ExprQt) original.expr;
        this.original = original;
        this.mutant = ExprMaker.make(originalExpr.decls, originalExpr.sub, op);
        this.name = originalExpr.op.name() + "->" + op.name();
    }

    public static void generate(List<Mutator> accumulator, Location original) {
        ExprQt originalExpr = (ExprQt) original.expr;
        if (!Mutator.exprqts_expr2bool.contains(originalExpr.op)) {
            return;
        }
        for (ExprQt.Op op : Mutator.exprqts_expr2bool) {
            if (op != originalExpr.op) {
                accumulator.add(new ReplaceQtOperator(original, op));
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Quantifier has to be changed.");
    }
}
