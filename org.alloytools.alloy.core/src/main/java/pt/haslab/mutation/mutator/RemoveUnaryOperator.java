package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;

import java.util.*;

public class RemoveUnaryOperator extends Mutator {

    private RemoveUnaryOperator(ExprUnary expr){
        this.original = expr;
        this.mutant = expr.sub;
        this.blacklisted.add(expr);
        this.name = expr.op.name();
    }

    public static List<Mutator> generate(Expr expr) {
        if(!(expr instanceof ExprUnary)){
            return new ArrayList<>();
        }
        ExprUnary exprUnary = (ExprUnary) expr;
        if(exprUnary.op == ExprUnary.Op.NOOP || exprUnary.type() != exprUnary.sub.type()){
            return new ArrayList<>();
        }
        return Collections.singletonList(new RemoveUnaryOperator((ExprUnary) expr));
    }
}
