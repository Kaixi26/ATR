package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.util.ExprMaker;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static edu.mit.csail.sdg.ast.ExprBinary.*;

public class ReplaceBinaryOperator extends Mutator {

    private static final Set<ExprBinary.Op> ops_bools = Stream.of(Op.AND, Op.OR, Op.IFF, Op.IMPLIES, Op.UNTIL, Op.RELEASES, Op.SINCE, Op.TRIGGERED)
            .collect(Collectors.toSet());

    private ReplaceBinaryOperator(ExprBinary original, Op op) {
        this.original = original;
        this.name = original.op.name() + "->" + op.name();
        this.mutant = ExprMaker.make(original.left, original.right, op);
    }

    // TODO: Other Operators
    // TODO: Some way to generate every candidate mutator
    public static List<Mutator> generate(Expr expr) {
        ArrayList<Mutator> ret = new ArrayList<>();
        if (!(expr instanceof ExprBinary)) {
            return ret;
        }
        ExprBinary exprBinary = (ExprBinary) expr;

        // [bool] <op> [bool]
        if (ops_bools.contains(exprBinary.op)) {
            for (Op op : ops_bools) {
                if (op != exprBinary.op) {
                    ret.add(new ReplaceBinaryOperator(exprBinary, op));
                }
            }
        }

        return ret;
    }
}
