package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.ExprUnary.Op;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.util.ExprMaker;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class InsertUnaryOperator extends Mutator {

    private static final Set<Op> ops_bool = Stream.of(Op.NOT, Op.AFTER, Op.ALWAYS, Op.EVENTUALLY, Op.BEFORE, Op.HISTORICALLY, Op.ONCE).collect(Collectors.toSet());

    private InsertUnaryOperator(ExprUnary expr, Expr original) {
        this.original = original;
        this.mutant = expr;
        this.name = expr.op.name();
    }

    // TODO: add more operators
    public static List<Mutator> generate(Expr expr) {
        ArrayList<Mutator> ret = new ArrayList<>();

        if (expr instanceof ExprUnary && ((ExprUnary) expr).op == Op.NOOP && ((ExprUnary) expr).sub instanceof Sig) {
            ret.add(new InsertUnaryOperator((ExprUnary) expr.prime(), expr));
        }

        if (expr.type().is_bool) {
            for (Op op : ops_bool) {
                ret.add(new InsertUnaryOperator((ExprUnary) ExprMaker.make(expr, op), expr));
            }
        }

        return ret;
    }
}
