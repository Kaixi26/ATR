package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ExprQtMutator extends Mutator {

    private ExprQtMutator(ExprQt original, Expr mutant) {
        this.original = original;
        this.name = original + "->" + mutant;
        this.mutant = mutant;
        this.blacklisted = LocationAggregator.BreadthBottomUp(original).stream().map(l -> l.expr).collect(Collectors.toSet());
    }


    public static List<ExprQtMutator> generate(Location location, ConstList<Sig> sigs) {
        ArrayList<ExprQtMutator> ret = new ArrayList<>();
        if (!(location.expr instanceof ExprQt)) {
            return ret;
        }

        ExprQt original = (ExprQt) location.expr;
        ExprUnary.Op mutantOp = opQt2opUnary(original.op);
        if (mutantOp == null) {
            return ret;
        }


        for (Decl d : original.decls) {
            for (Sig sig : sigs) {
                if (d.get().type().equals(sig.type())) {
                    Expr mutant = ExprMaker.make(ExprMaker.make(sig, ExprUnary.Op.NOOP), mutantOp);
                    ret.add(new ExprQtMutator(original, mutant));
                }
            }
        }

        return ret;
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
}
