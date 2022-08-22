package pt.haslab.ast.debug;

import edu.mit.csail.sdg.ast.*;

public class Debugger {
    private static long id = 0;

    private static long toGraphviz(Decl decl, StringBuilder sb) {
        long curr = Debugger.id++;
        sb.append(curr).append("[label=\"").append("<Decl>").append("\"];\n");

        long name = Debugger.id++;
        sb.append(name).append("[label=\"").append(decl.get()).append("\"];\n");
        sb.append(curr).append(" -> ").append(name).append("[label=\"name\"];\n");

        long expr = toGraphviz(decl.expr, sb);
        sb.append(curr).append(" -> ").append(expr).append("[label=\"expr\"];\n");


        return curr;
    }

    private static long toGraphviz(Expr e, StringBuilder sb){
        long curr = Debugger.id++;

        if(e instanceof ExprUnary) {
            ExprUnary eu = (ExprUnary) e;
            long sub = toGraphviz(eu.sub, sb);
            sb.append(curr).append("[label=\"").append(eu.op.toString()).append("\"];\n");
            sb.append(curr).append(" -> ").append(sub).append(";\n");
        } else if(e instanceof ExprQt){
            ExprQt eqt = (ExprQt) e;
            long sub = toGraphviz(eqt.sub, sb);
            sb.append(curr).append("[label=\"").append(eqt.op.toString()).append("\"];\n");
            for(Decl decl : eqt.decls){
                long declId = toGraphviz(decl, sb);
                sb.append(curr).append(" -> ").append(declId).append(";\n");
            }
            sb.append(curr).append(" -> ").append(sub).append(";\n");
        } else if(e instanceof ExprVar) {
            ExprVar ev = (ExprVar) e;
            sb.append(curr).append("[label=\"").append(ev.label.toString()).append("\"];\n");
        } else if(e instanceof ExprBinary){
            ExprBinary eb = (ExprBinary) e;
            long left = toGraphviz(eb.left, sb);
            long right = toGraphviz(eb.right, sb);
            sb.append(curr).append("[label=\"").append(eb.op.toString()).append("\"];\n");
            sb.append(curr).append(" -> ").append(left).append(";\n");
            sb.append(curr).append(" -> ").append(right).append(";\n");
        } else if(e instanceof ExprList){
            ExprList el = (ExprList) e;
            sb.append(curr).append("[label=\"").append(el.op.toString()).append("\"];\n");
            for(Expr earg : el.args){
                long arg = toGraphviz(earg, sb);
                sb.append(curr).append(" -> ").append(arg).append(";\n");
            }
        } else if(e instanceof Sig.SubsetSig){
            Sig.SubsetSig ssig = (Sig.SubsetSig) e;
            sb.append(curr).append("[label=\"").append(ssig.label).append("\"];\n");
        } else if(e instanceof Sig.PrimSig){
            Sig.PrimSig psig = (Sig.PrimSig) e;
            sb.append(curr).append("[label=\"").append(psig.label).append("\"];\n");
        } else if(e instanceof ExprConstant){
            ExprConstant ec = (ExprConstant) e;
            sb.append(curr).append("[label=\"EConst ").append(ec.string.equals("") ? ec.num : ec.string).append("\"];\n");
        } else {
            throw new UnsupportedOperationException("toGraphviz not implemented for " + e.getClass().toString());
        }
        return curr;
    }

    public static String toGraphviz(Expr e){
        StringBuilder sb = new StringBuilder();
        sb.append("digraph {\n");
        toGraphviz(e, sb);
        sb.append("}\n");
        return sb.toString();
    }
}
