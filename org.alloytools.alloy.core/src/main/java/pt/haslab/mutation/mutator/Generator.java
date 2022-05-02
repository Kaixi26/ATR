package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import edu.mit.csail.sdg.ast.ExprVar;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.relation.ExtendOrReduceMutator;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Location location, ConstList<Sig> sigs) {
        List<Mutator> ret = new ArrayList<>();
        generateMutators(ret, location, sigs);
        return ret;
    }

    public static void generateMutators(List<Mutator> accumulator, Location location, ConstList<Sig> sigs) {
        ConstList<Sig.Field> fields;
        {
            List<Sig.Field> tmp = new ArrayList<>();
            sigs.forEach(sig -> {
                for (Sig.Field field : sig.getFields()) {
                    tmp.add(field);
                }
            });
            fields = ConstList.make(tmp);
        }
        Expr expr = location.expr;
        //System.out.println(expr);
        //System.out.println(expr.getClass());


        if (location.insideDecl) {
            if (expr instanceof ExprUnary && ((ExprUnary) expr).sub instanceof Sig) {
                SigMutator.generate(accumulator, location, sigs, location.vars);
            }
        } else {
            if (expr instanceof ExprUnary) {
                if (((ExprUnary) expr).sub instanceof Sig) {
                    SigMutator.generate(accumulator, location, sigs, location.vars);
                } else if (((ExprUnary) expr).sub instanceof ExprVar) {
                    ExprVarMutator.generate(accumulator, location, sigs, location.vars);
                } else {
                    UnaryMutator.generate(accumulator, location);
                }
            } else if (expr instanceof ExprBinary) {
                BinaryMutator.generate(accumulator, location);
            } else if (expr instanceof ExprQt) {
                ExprQtMutator.generate(accumulator, location, sigs);
            }

            InsertJoinMutator.generate(accumulator, location, sigs, fields);
            ExtendOrReduceMutator.generate(accumulator, location, sigs, fields);

        }
    }
}
