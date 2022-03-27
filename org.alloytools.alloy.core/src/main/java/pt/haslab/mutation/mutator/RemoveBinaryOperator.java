package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RemoveBinaryOperator extends Mutator {

    private enum Branch {
        LEFT,
        RIGHT
    }

    // TODO: blacklist unused branch
    private RemoveBinaryOperator(ExprBinary expr, Branch branch){

        this.original = expr;
        switch (branch){
            case LEFT:
                this.mutant = expr.left;
                this.name = "TAKE_LEFT";
                break;
            case RIGHT:
                this.mutant = expr.right;
                this.name = "TAKE_RIGHT";
                break;
            default:
                throw new RuntimeException("Unreachable!");
        }
    }

    public static List<Mutator> generate(Expr expr) {
        ArrayList<Mutator> ret = new ArrayList<>();
        if(!(expr instanceof ExprBinary)){
            return ret;
        }
        ExprBinary exprBinary = (ExprBinary) expr;
        if(exprBinary.type() == exprBinary.left.type()){
            ret.add(new RemoveBinaryOperator(exprBinary, Branch.LEFT));
        }
        if(exprBinary.type() == exprBinary.right.type()){
            ret.add(new RemoveBinaryOperator(exprBinary, Branch.RIGHT));
        }
        return ret;
    }
}
