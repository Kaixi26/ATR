package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;

import java.util.*;

public class Mutator {
    public Expr original;
    public Expr mutant;

    public static List<Mutator> generate(Expr expr){
        return new ArrayList<>();
    }
}
