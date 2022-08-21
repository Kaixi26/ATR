package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.binary.RemoveBinaryMutator;
import pt.haslab.mutation.mutator.binary.ReplaceBinaryMutator;
import pt.haslab.mutation.mutator.binary.BinaryToUnaryMutator;
import pt.haslab.mutation.mutator.bool.InsertUnaryMutator;
import pt.haslab.mutation.mutator.quantifier.QtToUnaryMutator;
import pt.haslab.mutation.mutator.quantifier.ReplaceQtOperator;
import pt.haslab.mutation.mutator.relation.*;
import pt.haslab.mutation.mutator.unary.RemoveUnaryOperatorMutator;
import pt.haslab.mutation.mutator.unary.ReplaceSetUnderUnaryMutator;
import pt.haslab.mutation.mutator.unary.ReplaceUnaryOperatorMutator;

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

    public static boolean isGeneratableAsChild(Mutator m) {
        return !(m instanceof ReplaceSetUnderUnaryMutator
                || m instanceof RemoveUnaryOperatorMutator
                || m instanceof RemoveBinaryMutator);
    }

    public static void generateMutatorsExprUnary(List<Mutator> accumulator, Location location, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        RemoveUnaryOperatorMutator.generate(accumulator, location);
        ReplaceSetUnderUnaryMutator.generate(accumulator, location, sigs, fields);
        ReplaceUnaryOperatorMutator.generate(accumulator, location);
    }

    public static void generateMutatorsExprBinary(List<Mutator> accumulator, Location location) {
        RemoveBinaryMutator.generate(accumulator, location);
        ReplaceBinaryMutator.generate(accumulator, location);
        BinaryToUnaryMutator.generate(accumulator, location);
    }

    public static void generateMutatorsQt(List<Mutator> accumulator, Location location, ConstList<Sig> sigs) {
        ReplaceQtOperator.generate(accumulator, location);
        QtToUnaryMutator.generate(accumulator, location, sigs);
    }

    public static void generateMutatorsBool(List<Mutator> accumulator, Location location) {
        InsertUnaryMutator.generate(accumulator, location);
    }

    public static void generateMutatorsRelation(List<Mutator> accumulator, Location location, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        ExtendOrReduceMutator.generate(accumulator, location, sigs, fields);
        InsertJoinMutator.generate(accumulator, location, sigs, fields);
        InsertPrimeMutator.generate(accumulator, location);
        RelationToBinaryMutator.generate(accumulator, location, sigs);
        RelationToUnaryMutator.generate(accumulator, location);
        ReplaceRelationMutator.generate(accumulator, location, sigs);
    }

    public static void generateMutators(List<Mutator> accumulator, Location location, ConstList<Sig> sigs) {
        if (location.expr instanceof Sig || location.expr instanceof ExprVar || location.expr instanceof Sig.Field) {
            return;
        }

        ConstList<Sig.Field> fields = fieldsFromSigs(sigs);
        Expr expr = location.expr;

        if (!location.insideDecl) {
            if (expr instanceof ExprUnary && ((ExprUnary) expr).op != ExprUnary.Op.NOOP) {
                generateMutatorsExprUnary(accumulator, location, sigs, fields);
            } else if (expr instanceof ExprBinary) {
                generateMutatorsExprBinary(accumulator, location);
            } else if (expr instanceof ExprQt) {
                generateMutatorsQt(accumulator, location, sigs);
            }
        }

        if (expr.type().is_bool) {
            generateMutatorsBool(accumulator, location);
        } else {
            generateMutatorsRelation(accumulator, location, sigs, fields);
        }


    }
}
