package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.ArrayList;
import java.util.Collection;

public class LocationAggregator {

    public static Collection<Location> BreadthBottomUp(Expr root) {
        ArrayList<Location> ret = new ArrayList<>();

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            boolean insideDecl = false;

            private void add(Expr e){
                ret.add(new Location(e, insideDecl));
            }

            public Void visit(ExprBinary x) throws Err {
                visitThis(x.left);
                visitThis(x.right);
                add(x);
                return null;
            }

            public Void visit(ExprList x) throws Err {
                for(Expr arg : x.args){
                    visitThis(arg);
                }
                add(x);
                return null;
            }

            public Void visit(ExprCall x) throws Err {
                add(x);
                return null;
            }

            public Void visit(ExprConstant x) throws Err {
                add(x);
                return null;
            }

            public Void visit(ExprITE x) throws Err {
                throw new NotImplementedException();
            }

            public Void visit(ExprLet x) throws Err {
                throw new NotImplementedException();
            }

            public Void visit(ExprQt x) throws Err {
                boolean currInsideDecl = insideDecl;
                insideDecl = true;
                for(Decl decl : x.decls){
                    visitThis(decl.expr);
                }
                insideDecl = currInsideDecl;
                visitThis(x.sub);
                add(x);
                return null;
            }

            public Void visit(ExprUnary x) throws Err {
                visitThis(x.sub);
                add(x);
                return null;
            }

            public Void visit(ExprVar x) throws Err {
                add(x);
                return null;
            }

            public Void visit(Sig x) throws Err {
                add(x);
                return null;
            }

            public Void visit(Sig.Field x) throws Err {
                add(x);
                return null;
            }

        };

        visitQuery.visitThis(root);
        return ret;
    }
}
