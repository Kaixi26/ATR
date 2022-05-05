package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.binary.InsertUnaryMutator;
import pt.haslab.mutation.mutator.relation.ExtendOrReduceMutator;
import pt.haslab.mutation.mutator.relation.ReplaceRelationMutator;
import pt.haslab.mutation.mutator.signature.InsertJoinMutator;
import pt.haslab.mutation.mutator.signature.ToBinaryMutator;

import java.util.ArrayList;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Location location, ConstList<Sig> sigs) {
        List<Mutator> ret = new ArrayList<>();
        generateMutators(ret, location, sigs);
        for (Mutator mutator : ret) {
            mutator.sigs = sigs;
        }
        return ret;
    }

    public static ConstList<Sig.Field> fieldsFromSigs(ConstList<Sig> sigs) {
        ConstList<Sig.Field> fields;
        List<Sig.Field> tmp = new ArrayList<>();
        sigs.forEach(sig -> {
            for (Sig.Field field : sig.getFields()) {
                tmp.add(field);
            }
        });
        fields = ConstList.make(tmp);
        return fields;
    }

    private static void generateMutatorsExprUnary(List<Mutator> accumulator, Location location, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        ExprUnary expr = (ExprUnary) location.expr;
        if (expr.op == ExprUnary.Op.NOOP) {
            if (expr.sub instanceof Sig) {
                ToBinaryMutator.generate(accumulator, location, sigs);
                InsertUnaryMutator.generate(accumulator, location);
            } else if (expr.sub instanceof ExprVar) {
                ExprVarMutator.generate(accumulator, location, sigs, location.vars);
            }
        } else {
            UnaryMutator.generate(accumulator, location, sigs, fields);
        }

    }

    private static void generateMutators(List<Mutator> accumulator, Location location, ConstList<Sig> sigs) {
        if (location.expr instanceof Sig || location.expr instanceof ExprVar) {
            return;
        }

        ConstList<Sig.Field> fields = fieldsFromSigs(sigs);
        Expr expr = location.expr;
        //System.out.println(expr);
        //System.out.println(expr.getClass());


        if (location.insideDecl) {
            if (expr instanceof ExprUnary && ((ExprUnary) expr).sub instanceof Sig) {
                ToBinaryMutator.generate(accumulator, location, sigs);
                ExtendOrReduceMutator.generate(accumulator, location, sigs, fields);
                ReplaceRelationMutator.generate(accumulator, location, sigs);
            }
        } else {
            if (expr instanceof ExprUnary) {
                generateMutatorsExprUnary(accumulator, location, sigs, fields);
            } else if (expr instanceof ExprBinary) {
                BinaryMutator.generate(accumulator, location);
            } else if (expr instanceof ExprQt) {
                ExprQtMutator.generate(accumulator, location, sigs);
            }

            InsertJoinMutator.generate(accumulator, location, sigs, fields);
            ExtendOrReduceMutator.generate(accumulator, location, sigs, fields);
            InsertUnaryMutator.generate(accumulator, location);
            ReplaceRelationMutator.generate(accumulator, location, sigs);

        }
    }
}
