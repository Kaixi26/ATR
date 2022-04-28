package pt.haslab.util;

import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.MutatorApplier;
import pt.haslab.mutation.mutator.Mutator;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

public class Variabilizer {

    static final String VARIABILIZED_PREFIX = "variabilization";

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
        List<ExprVar> exprVars = new ArrayList<>();
        for(int i=0; i<3; i++){
            exprVars.add(ExprVar.make(null, declName + "$x" + i, declExpr.type()));
        }
        System.out.println(">>> " + declExpr);
        Decl decl = new Decl(null, null, null, null, exprVars, declExpr);

        Optional<Expr> exprVar = exprVars.stream().map(e -> (Expr) e).reduce((l, r) -> ExprMaker.make(l, r, ExprBinary.Op.PLUS));

        Mutator mutator = Mutator.make(varabilized, exprVar.get());
        Mutator mutatorNONE = Mutator.make(varabilized, Sig.PrimSig.NONE);
        return MutatorApplier
                .make(Collections.singletonList(mutator))
                .apply(root)
                .forSome(decl);
    }


    public static Optional<Expr> variabilize(Expr root, Expr varabilized){

        if(varabilized.type().is_bool){
            return Optional.of(varabilizeBool(root, varabilized));
        } else if(varabilized.type().is_int()) {
            throw new RuntimeException("Not Implemented");
        } else {
            return Optional.empty();
            //return varabilizeSig(root, varabilized);
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
