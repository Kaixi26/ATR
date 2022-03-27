package pt.haslab.util;

import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.MutatorApplier;
import pt.haslab.mutation.mutator.Mutator;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.ArrayList;
import java.util.Collections;

public class Variabilizer {

    static final String VARIABILIZED_PREFIX = "__variabilized_";

    static Expr varabilizeBool(Expr root, Expr varabilized){
        String declName = VARIABILIZED_PREFIX + System.identityHashCode(varabilized);

        Expr declExpr = ExprConstant.makeNUMBER(0).plus(ExprConstant.makeNUMBER(1));
        ExprVar exprVar = ExprVar.make(null, declName, declExpr.type());
        Decl decl = new Decl(null, null, null, null, Collections.singletonList(exprVar), declExpr);

        Mutator mutator = Mutator.make(varabilized, exprVar.equal(ExprConstant.makeNUMBER(0)).not());
        return MutatorApplier
                .make(Collections.singletonList(mutator))
                .apply(root)
                .forSome(decl);
    }

    static Expr varabilizeSig(Expr root, Expr varabilized){
        String declName = VARIABILIZED_PREFIX + System.identityHashCode(varabilized);

        Expr declExpr = varabilized.deNOP().type().toExpr();
        ExprVar exprVar = ExprVar.make(null, declName, declExpr.type());
        Decl decl = new Decl(null, null, null, null, Collections.singletonList(exprVar), declExpr);

        Mutator mutator = Mutator.make(varabilized, exprVar);
        return MutatorApplier
                .make(Collections.singletonList(mutator))
                .apply(root)
                .forSome(decl);
    }


    public static Expr variabilize(Expr root, Expr varabilized){

        if(varabilized.type().is_bool){
            return varabilizeBool(root, varabilized);
        } else if(varabilized.type().is_int()) {
            throw new NotImplementedException();
        } else {
            return varabilizeSig(root, varabilized);
        }
        /*
        Expr declExpr = Sig.PrimSig.UNIV.oneOf();

        String declName = "__variabilized_" + System.identityHashCode(varabilized);
        ExprVar declVar = ExprVar.make(null, declName, declExpr.type());
        Decl decl = new Decl(null, null, null, null, Collections.singletonList(declVar), declExpr);

        Mutator mutator = Mutator.make(varabilized, declVar.equal(declVar));

        return MutatorApplier
                .make(Collections.singletonList(mutator))
                .apply(root)
                .forSome(decl);
         */
    }
}
