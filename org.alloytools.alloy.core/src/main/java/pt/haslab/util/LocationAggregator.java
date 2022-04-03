package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.ArrayList;
import java.util.Collection;

public class LocationAggregator {

    public static Collection<Expr> BreadthBottomUp(Expr root) {
        ArrayList<Expr> ret = new ArrayList<>();

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            public Void visit(ExprBinary x) throws Err {
                visitThis(x.left);
                visitThis(x.right);
                ret.add(x);
                return null;
            }

            public Void visit(ExprList x) throws Err {
                for(Expr arg : x.args){
                    visitThis(arg);
                }
                ret.add(x);
                return null;
            }

            public Void visit(ExprCall x) throws Err {
                ret.add(x);
                return null;
            }

            public Void visit(ExprConstant x) throws Err {
                ret.add(x);
                return null;
            }

            public Void visit(ExprITE x) throws Err {
                throw new NotImplementedException();
            }

            public Void visit(ExprLet x) throws Err {
                throw new NotImplementedException();
            }

            public Void visit(ExprQt x) throws Err {
                for(Decl decl : x.decls){
                    visitThis(decl.expr);
                }
                visitThis(x.sub);
                ret.add(x);
                return null;
            }

            public Void visit(ExprUnary x) throws Err {
                visitThis(x.sub);
                ret.add(x);
                return null;
            }

            public Void visit(ExprVar x) throws Err {
                ret.add(x);
                return null;
            }

            public Void visit(Sig x) throws Err {
                ret.add(x);
                return null;
            }

            public Void visit(Sig.Field x) throws Err {
                ret.add(x);
                return null;
            }

        };

        visitQuery.visitThis(root);
        return ret;
    }
}
