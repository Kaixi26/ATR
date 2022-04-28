package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
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
                throw new RuntimeException("Not Implemented");
            }

            public Void visit(ExprLet x) throws Err {
                throw new RuntimeException("Not Implemented");
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

    public static Collection<Location> DepthFirst(Expr root) {
        ArrayList<Location> ret = new ArrayList<>();

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            boolean insideDecl = false;
            final Stack<ExprHasName> vars = new Stack<>();

            private void add(Expr e) {
                ret.add(new Location(e, insideDecl, new ArrayList<>(vars)));
            }

            public Void visit(ExprBinary x) throws Err {
                add(x);
                add(x.left);
                add(x.right);
                return null;
            }

            public Void visit(ExprList x) throws Err {
                add(x);
                for (Expr arg : x.args) {
                    visitThis(arg);
                }
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
                throw new RuntimeException("Not Implemented");
            }

            public Void visit(ExprLet x) throws Err {
                throw new RuntimeException("Not Implemented");
            }

            public Void visit(ExprQt x) throws Err {
                add(x);

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

                return null;
            }

            public Void visit(ExprUnary x) throws Err {
                add(x);
                visitThis(x.sub);
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
