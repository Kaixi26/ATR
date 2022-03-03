package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;

import java.lang.reflect.Field;
import java.util.*;

public class RTO extends Mutator {

    private ExprUnary expr;
    private ExprUnary.Op originalOp;

    private static final Set<ExprUnary.Op> validOps =
            new HashSet<>(Arrays.asList(
                    ExprUnary.Op.ALWAYS,
                    ExprUnary.Op.EVENTUALLY,
                    ExprUnary.Op.AFTER,
                    ExprUnary.Op.BEFORE,
                    ExprUnary.Op.HISTORICALLY
            ));

    private RTO(ExprUnary expr){
        this.original = expr;
        this.mutant = expr.sub;
        this.expr = expr;
        this.blacklisted.add(expr);
        this.originalOp = expr.op;
    }

    public static List<Mutator> generate(Expr expr) {
        if(!(expr instanceof ExprUnary && validOps.contains(((ExprUnary) expr).op))){
            return new ArrayList<>();
        }
        return Collections.singletonList(new RTO((ExprUnary) expr));
    }
}
