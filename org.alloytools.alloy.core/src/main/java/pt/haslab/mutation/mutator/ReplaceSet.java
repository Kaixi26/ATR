package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;

public class ReplaceSet extends Mutator {

    private ReplaceSet(Expr expr, Expr original) {
        this.original = original;
        this.mutant = expr;
        this.name = original + "->" + expr;
    }

    private static List<Mutator> generateFromSig(Expr original, ConstList<Sig> sigs, Sig mutSig){
        ArrayList<Mutator> ret = new ArrayList<>();
        for(Sig sig : sigs){
            if(mutSig.type() == sig.type() && !mutSig.equals(sig)){
                ret.add(new ReplaceSet(ExprMaker.make(sig, ExprUnary.Op.NOOP), original));
            }
        }
        return ret;
    }

    public static List<Mutator> generate(Expr expr, ConstList<Sig> sigs) {
        if(!(expr instanceof ExprUnary)){
            return new ArrayList<>();
        }
        Expr sub = ((ExprUnary) expr).sub;

        if(sub instanceof Sig){
            return generateFromSig(expr, sigs, (Sig) sub);
        }

        return new ArrayList<>();
    }
}
