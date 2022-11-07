package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
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

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
        if (original.expr.type().arity() != 1) {
            return;
        }
        for (Sig sig : sigs) {
            if (original.expr.type() == sig.type() && !original.expr.equals(sig)) {
                Expr right = ExprMaker.make(sig, ExprUnary.Op.NOOP);
                for (ExprBinary.Op op : Mutator.bops_setset2set) {
                    accumulator.add(new RelationToBinaryMutator(original, ExprMaker.make(original.expr, right, op)));
                }
            }
        }
    }

    @Override
    public Optional<String> hint() {
        return Optional.of("Add a binary or unary operator.");
    }
}