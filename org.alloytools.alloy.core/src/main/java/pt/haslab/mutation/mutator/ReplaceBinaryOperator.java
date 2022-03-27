package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.*;
import java.util.stream.Collectors;

import static edu.mit.csail.sdg.ast.ExprBinary.*;

public class ReplaceBinaryOperator extends Mutator {

    private ReplaceBinaryOperator(ExprBinary original, Op op){
        this.original = original;
        this.name = original.op.name() + "->" + op.name();
        switch (op){
            case AND:
                this.mutant = original.left.and(original.right);
                break;
            default:
                System.out.println(op);
                throw new NotImplementedException();
        }
    }

    // TODO: Other Operators
    // TODO: Some way to generate every candidate mutator
    public static List<Mutator> generate(Expr expr) {
        ArrayList<Mutator> ret = new ArrayList<>();
        if(!(expr instanceof ExprBinary)){
            return ret;
        }
        ExprBinary exprBinary = (ExprBinary) expr;

        switch (exprBinary.op){
            case UNTIL:
            case IMPLIES:
                ret.add(new ReplaceBinaryOperator(exprBinary, Op.AND));
            default:
                break;
        }
        return ret;
    }
}
