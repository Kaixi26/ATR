package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Sig;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Expr expr, ConstList<Sig> sigs) {
        List<Mutator> ret = new ArrayList<>();
        ret.addAll(RemoveUnaryOperator.generate(expr));
        ret.addAll(ReplaceUnaryOperator.generate(expr));
        ret.addAll(InsertUnaryOperator.generate(expr));
        ret.addAll(ReplaceBinaryOperator.generate(expr));
        ret.addAll(RemoveBinaryOperator.generate(expr));
        //ret.addAll(ReplaceSet.generate(expr, sigs));
        return ret;
    }
}
