package pt.haslab.mutation;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprHasName;
import edu.mit.csail.sdg.ast.ExprVar;

import java.util.List;

public class Location {
    public final Expr expr;
    public final boolean insideDecl;
    public final List<ExprHasName> vars;
    public boolean canChangeArity = false;

    public Location(Expr expr, boolean insideDecl, List<ExprHasName> vars){
        this.expr = expr;
        this.insideDecl = insideDecl;
        this.vars = vars;
    }
}
