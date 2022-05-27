package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.alloy4.Pos;
import edu.mit.csail.sdg.alloy4.SafeList;
import edu.mit.csail.sdg.alloy4.Util;
import edu.mit.csail.sdg.ast.*;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.List;

public class ExprMaker {

    public static ExprUnary make(Expr sub, ExprUnary.Op op) {
        return (ExprUnary) op.make(sub.span(), sub);
    }

    public static Expr make(Expr left, Expr right, ExprBinary.Op op) {
        return op.make(left.span().merge(right.span()), null, left, right);
    }

    public static ExprQt make(List<Decl> decls, Expr sub, ExprQt.Op op) {
        return (ExprQt) op.make(decls.get(0).span(), null, decls, sub);
    }

    public static ExprList make(List<Expr> exprs, ExprList.Op op){
        return ExprList.make(null, null, op, exprs);
    }

}
