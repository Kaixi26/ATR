package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import org.eclipse.jdt.annotation.Nullable;

import java.util.Iterator;
import java.util.Optional;
import java.util.function.Function;

public class ExprToString {

    private static Optional<String> unaryOpToString(ExprUnary.Op op) {
        switch (op) {
            case SOMEOF:
            case SOME:
                return Optional.of("some");
            case LONEOF:
            case LONE:
                return Optional.of("lone");
            case ONEOF:
            case ONE:
                return Optional.of("one");
            case SETOF:
                return Optional.of("set");
            case EXACTLYOF:
                return Optional.of("exactly");
            case NOT:
                return Optional.of("!");
            case NO:
                return Optional.of("no");
            case TRANSPOSE:
                return Optional.of("~");
            case RCLOSURE:
                return Optional.of("*");
            case CLOSURE:
                return Optional.of("^");
            case CARDINALITY:
                return Optional.of("#");
            case ONCE:
                return Optional.of("once");
            case AFTER:
                return Optional.of("after");
            case ALWAYS:
                return Optional.of("always");
            case BEFORE:
                return Optional.of("before");
            case EVENTUALLY:
                return Optional.of("eventually");
            case HISTORICALLY:
                return Optional.of("historically");
            case CAST2INT:
            case NOOP:
            case CAST2SIGINT:
        }

        return Optional.empty();
    }

    public static String exprToString(Expr e) {
        StringBuilder sb = new StringBuilder();

        Function<Runnable, Void> between_parens = ((fn) -> {
            sb.append("(");
            fn.run();
            sb.append(")");
            return null;
        });

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            @Override
            public Void visit(ExprBinary x) throws Err {
                return between_parens.apply(() -> {
                    visitThis(x.left);
                    sb.append(" ").append(x.op.toString()).append(" ");
                    visitThis(x.right);
                });
            }

            @Override
            public Void visit(ExprList x) throws Err {
                Iterator<Expr> it = x.args.iterator();
                return between_parens.apply(() -> {
                    switch (x.op) {
                        case OR:
                        case AND:
                            String sep = x.op.equals(ExprList.Op.AND) ? "&&" : "||";
                            visitThis(it.next());
                            it.forEachRemaining((expr -> {
                                sb.append(" ").append(sep).append(" ");
                                visitThis(expr);
                            }));
                            break;
                        case DISJOINT:
                            sb.append("disj ");
                            visitThis(it.next());
                            it.forEachRemaining((expr -> {
                                sb.append(",").append(" ");
                                visitThis(expr);
                            }));


                        case TOTALORDER:
                            throw new IllegalArgumentException("Can't stringify ExprList with op 'TOTALORDER'");
                    }
                });
            }

            @Override
            public Void visit(ExprCall x) throws Err {
                sb.append(x.fun.label.replace("this/", ""));
                sb.append("[");
                Iterator<Expr> it = x.args.iterator();
                if(it.hasNext()) {
                    visitThis(it.next());
                    it.forEachRemaining(expr -> {
                        sb.append(", ");
                        visitThis(expr);
                    });
                }
                sb.append("]");
                return null;
            }

            @Override
            public Void visit(ExprConstant x) throws Err {
                sb.append(x.toString());
                return null;
            }

            @Override
            public Void visit(ExprITE x) throws Err {
                return between_parens.apply(() -> {
                    visitThis(x.cond);
                    sb.append(" => ");
                    visitThis(x.left);
                    sb.append(" else ");
                    visitThis(x.right);
                });
            }

            @Override
            public Void visit(ExprLet x) throws Err {
                return between_parens.apply(() -> {
                    sb.append("let ");
                    visitThis(x.var);
                    sb.append(" = {");
                    visitThis(x.expr);
                    sb.append("} | ");
                    visitThis(x.sub);
                });
            }

            public void visit(Decl d) throws Err {
                Iterator<? extends ExprHasName> it = d.names.iterator();
                if (d.disjoint != null) sb.append("disj ");
                visitThis(it.next());
                it.forEachRemaining(expr -> {
                    sb.append(", ");
                    visitThis(expr);
                });
                sb.append(" : ");
                visitThis(d.expr);
            }

            @Override
            public Void visit(ExprQt x) throws Err {

                return between_parens.apply(() -> {
                    if (!x.op.equals(ExprQt.Op.COMPREHENSION)) {
                        sb.append(x.op).append(" ");
                    }
                    Iterator<Decl> it = x.decls.iterator();
                    visit(it.next());
                    it.forEachRemaining(decl -> {
                        sb.append(", ");
                        visit(decl);
                    });

                    sb.append(" | ");
                    visitThis(x.sub);
                });
            }

            @Override
            public Void visit(ExprUnary x) throws Err {
                Optional<String> opStr = unaryOpToString(x.op);
                if (opStr.isPresent()) {
                    return between_parens.apply(() -> {
                        sb.append(opStr.get()).append(" ");
                        visitThis(x.sub);
                    });
                } else {
                    visitThis(x.sub);
                    if (x.op.equals(ExprUnary.Op.PRIME)) {
                        sb.append("'");
                    }
                    return null;
                }
            }

            @Override
            public Void visit(ExprVar x) throws Err {
                sb.append(x.label.replace("this/", ""));
                return null;
            }

            @Override
            public Void visit(Sig x) throws Err {
                sb.append(x.label.replace("this/", ""));
                return null;
            }

            @Override
            public Void visit(Sig.Field x) throws Err {
                sb.append(x.label.replace("this/", ""));
                return null;
            }
        };

        visitQuery.visitThis(e);
        return sb.toString();
    }
}
