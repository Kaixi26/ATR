package pt.haslab.mutation;

import edu.mit.csail.sdg.ast.Expr;

public class Location {
    public final Expr expr;
    public final boolean insideDecl;

    public Location(Expr expr, boolean insideDecl){
        this.expr = expr;
        this.insideDecl = insideDecl;
    }
}
