package pt.haslab.util;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

public class ExprMaker {

    public static Expr make(Expr sub, ExprUnary.Op op) {
        return op.make(sub.span(), sub);
    }

    public static Expr make(Expr left, Expr right, ExprBinary.Op op) {
        return op.make(left.span().merge(right.span()), null, left, right);
    }
}
