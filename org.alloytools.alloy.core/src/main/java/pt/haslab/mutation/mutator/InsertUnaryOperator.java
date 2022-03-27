package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class InsertUnaryOperator extends Mutator {
    private InsertUnaryOperator(ExprUnary expr, Expr original){
        this.original = original;
        this.mutant = expr;
        this.name = expr.op.name();
        System.out.println(original.pos);
    }

    // TODO: add more operators
    // Not really varializable (?)
    public static List<Mutator> generate(Expr expr) {
        ArrayList<Mutator> ret = new ArrayList<>();
        if(expr instanceof ExprUnary && ((ExprUnary) expr).op == ExprUnary.Op.NOOP && ((ExprUnary) expr).sub instanceof Sig){
            ret.add(new InsertUnaryOperator((ExprUnary) expr.prime(), expr));
        }
        return ret;
    }
}
