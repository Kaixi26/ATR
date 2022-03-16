package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import org.eclipse.jdt.annotation.NonNull;

import java.util.*;

public class Mutator {
    public Expr original;
    public Expr mutant;
    public Set<Expr> blacklisted = new HashSet<>();

    public static List<Mutator> generate(Expr ignoredExpr){
        return new ArrayList<>();
    }

    public static Mutator make(@NonNull Expr original, @NonNull Expr mutant){
        Mutator ret = new Mutator();
        ret.original = original;
        ret.mutant = mutant;
        return ret;
    }
}
