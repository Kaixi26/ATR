package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;

import java.util.*;

public class RemoveUnaryOperator extends Mutator {

    private RemoveUnaryOperator(ExprUnary expr){
        this.original = expr;
        this.mutant = expr.sub;
        this.blacklisted.add(expr);
    }

    public static List<Mutator> generate(Expr expr) {
        if(!(expr instanceof ExprUnary)
                || ((ExprUnary) expr).op == ExprUnary.Op.NOOP
                || expr.type() != ((ExprUnary) expr).sub.type()){
            return new ArrayList<>();
        }
        return Collections.singletonList(new RemoveUnaryOperator((ExprUnary) expr));
    }
}
