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

    public static Expr variabilize(Expr root, Expr varabilized){

        if(varabilized.type().is_bool){
            return varabilizeBool(root, varabilized);
        } else {
            throw new NotImplementedException();
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
