package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.util.ExprMaker;

import javax.naming.OperationNotSupportedException;
import java.util.*;
import java.util.stream.Collectors;

import static edu.mit.csail.sdg.ast.ExprUnary.*;
import static edu.mit.csail.sdg.ast.ExprUnary.Op.*;

public class ReplaceUnaryOperator extends Mutator {

    private static final Set<Op> ops =
            new HashSet<>(Arrays.asList(
                    NO,
                    SOME,
                    LONE,
                    ONE
            ));

    private ReplaceUnaryOperator(ExprUnary expr, Op op){
        this.original = expr;
        this.name = expr.op.name() + "->" + op.name();
        this.mutant = ExprMaker.make(expr.sub, op);
    }

    public static List<Mutator> generate(Expr expr) {
        if(!(expr instanceof ExprUnary)
                || !ops.contains(((ExprUnary) expr).op)){
            return new ArrayList<>();
        }
        return ops.stream()
                .filter(op -> op != ((ExprUnary) expr).op)
                .map(op -> new ReplaceUnaryOperator((ExprUnary) expr, op))
                .collect(Collectors.toList());
    }
}
