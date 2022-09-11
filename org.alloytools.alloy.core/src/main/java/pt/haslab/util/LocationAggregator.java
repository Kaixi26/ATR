package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.*;

public class LocationAggregator {

    public static Collection<Location> BreadthBottomUp(Expr root) {
        ArrayList<Location> ret = new ArrayList<>();

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            boolean insideDecl = false;
            final Stack<ExprHasName> vars = new Stack<>();

            private void add(Expr e) {
                ret.add(new Location(e, insideDecl, new ArrayList<>(vars)));
            }

            public Void visit(ExprBinary x) throws Err {
                visitThis(x.left);
                visitThis(x.right);
                add(x);
                return null;
            }

            public Void visit(ExprList x) throws Err {
                for (Expr arg : x.args) {
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
                visitThis(x.cond);
                visitThis(x.left);
                visitThis(x.right);
                add(x);
                return null;
            }

            public Void visit(ExprLet x) throws Err {
                visitThis(x.sub);
                return null;
            }

            public Void visit(ExprQt x) throws Err {
                boolean currInsideDecl = insideDecl;
                insideDecl = true;
                for (Decl decl : x.decls) {
                    visitThis(decl.expr);
                }
                insideDecl = currInsideDecl;

                int added = 0;
                for (Decl d : x.decls) {
                    for (ExprHasName e : d.names) {
                        vars.push(e);
                        added++;
                    }
                }
                visitThis(x.sub);
                for (int i = 0; i < added; i++) {
                    vars.pop();
                }

                add(x);
                return null;
            }

            public Void visit(ExprUnary x) throws Err {
                int sz = ret.size();
                visitThis(x.sub);
                if (Mutator.uops_rel2bool.contains(x.op) && ret.size() > sz) {
                    ret.get(sz).canChangeArity = true;
                }
                add(x);
                return null;
            }

            public Void visit(ExprVar x) throws Err {
                return null;
            }

            public Void visit(Sig x) throws Err {
                return null;
            }

            public Void visit(Sig.Field x) throws Err {
                return null;
            }

        };

        visitQuery.visitThis(root);
        return ret;
    }

}
