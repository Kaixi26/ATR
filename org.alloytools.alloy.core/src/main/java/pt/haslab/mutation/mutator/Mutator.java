package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;

import java.util.*;

public class Mutator {
    public Expr original;
    public Expr mutant;
    public Set<Expr> blacklisted = new HashSet<>();

    public static List<Mutator> generate(Expr ignoredExpr){
        return new ArrayList<>();
    }
}
