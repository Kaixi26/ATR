package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

public class ReplaceSet extends Mutator {

    private ReplaceSet(Expr expr, Expr original) {
        this.original = original;
        this.mutant = expr;
        this.name = original + "->" + expr;
    }

    private static List<Mutator> generateFromSig(Expr original, ConstList<Sig> sigs, List<ExprHasName> vars, Sig mutSig){
        ArrayList<Mutator> ret = new ArrayList<>();
        for(Sig sig : sigs){
            if(mutSig.type() == sig.type() && !mutSig.equals(sig)){
                ret.add(new ReplaceSet(ExprMaker.make(sig, ExprUnary.Op.NOOP), original));
            }
        }
        for(ExprHasName var : vars){
            if(mutSig.type() == var.type()){
                ret.add(new ReplaceSet(ExprMaker.make(var, ExprUnary.Op.NOOP), original));
            }
        }
        return ret;
    }

    private static List<Mutator> generateFromVar(Expr original, ConstList<Sig> sigs, List<ExprHasName> vars, ExprVar mutSig){
        ArrayList<Mutator> ret = new ArrayList<>();
        for(Sig sig : sigs){
            if(mutSig.type() == sig.type()){
                ret.add(new ReplaceSet(ExprMaker.make(sig, ExprUnary.Op.NOOP), original));
            }
        }
        for(ExprHasName var : vars){
            if(mutSig.type() == var.type() && !mutSig.equals(var)){
                ret.add(new ReplaceSet(ExprMaker.make(var, ExprUnary.Op.NOOP), original));
            }
        }
        return ret;
    }

    public static List<Mutator> generate(Location location, ConstList<Sig> sigs) {
        Expr expr = location.expr;
        if(!(expr instanceof ExprUnary) || (((ExprUnary) expr).op != ExprUnary.Op.NOOP)){
            return new ArrayList<>();
        }
        Expr sub = ((ExprUnary) expr).sub;

        if(sub instanceof Sig){
            return generateFromSig(expr, sigs, location.vars, (Sig) sub);
        } else if(sub instanceof ExprVar){
            return generateFromVar(expr, sigs, location.vars, (ExprVar) sub);
        }

        return new ArrayList<>();
    }
}
