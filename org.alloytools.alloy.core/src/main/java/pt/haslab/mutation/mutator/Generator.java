package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import edu.mit.csail.sdg.ast.ExprVar;
import pt.haslab.mutation.Location;

import java.util.ArrayList;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Location location, ConstList<Sig> sigs) {
        List<Mutator> ret = new ArrayList<>();
        generateMutators(ret, location, sigs);
        return ret;
    }

    public static void generateMutators(List<Mutator> accumulator, Location location, ConstList<Sig> sigs) {
        Expr expr = location.expr;

        if (location.insideDecl) {
            if (expr instanceof ExprUnary && ((ExprUnary) expr).sub instanceof Sig) {
                SigMutator.generate(accumulator, location.expr, sigs, location.vars);
            }
        } else {
            if (expr instanceof ExprUnary) {
                if (((ExprUnary) expr).sub instanceof Sig) {
                    SigMutator.generate(accumulator, location.expr, sigs, location.vars);
                } else if (((ExprUnary) expr).sub instanceof ExprVar) {
                    ExprVarMutator.generate(accumulator, location.expr, sigs, location.vars);
                } else {
                    UnaryMutator.generate(accumulator, (ExprUnary) expr);
                }
            } else if (expr instanceof ExprBinary) {
                BinaryMutator.generate(accumulator, (ExprBinary) expr);
            } else if (expr instanceof ExprQt) {
                ExprQtMutator.generate(accumulator, (ExprQt) expr, sigs);
            }
        }
    }
}
