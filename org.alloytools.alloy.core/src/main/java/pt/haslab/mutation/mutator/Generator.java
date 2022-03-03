package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;

import java.util.ArrayList;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Expr expr) {
        List<Mutator> ret = new ArrayList<>();
        ret.addAll(RTO.generate(expr));
        return ret;
    }
}
