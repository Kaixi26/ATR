package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.mutation.Location;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Generator {

    public static List<Mutator> generateMutators(Location location, ConstList<Sig> sigs) {
        List<Mutator> ret = new ArrayList<>();

        Expr expr = location.expr;

        if(location.insideDecl){
            ret.addAll(ReplaceSet.generate(location, sigs));
        } else {
            ret.addAll(RemoveUnaryOperator.generate(expr));
            ret.addAll(ReplaceUnaryOperator.generate(expr));
            ret.addAll(InsertUnaryOperator.generate(expr));
            ret.addAll(ReplaceBinaryOperator.generate(expr));
            ret.addAll(RemoveBinaryOperator.generate(expr));
            ret.addAll(TransmuteBinaryOperator.generate(location));
            ret.addAll(ReplaceSet.generate(location, sigs));
        }
        return ret;
    }
}
