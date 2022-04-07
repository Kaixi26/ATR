package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprUnary;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class TransmuteBinaryOperator extends Mutator {

    private TransmuteBinaryOperator(ExprBinary original, Expr mutant) {
        this.original = original;
        this.name = original.op.name() + "->" + mutant;
        this.mutant = mutant;
    }

    /*
        [bop] :: {Set} -> {Set} -> {Bool}
        [bop'] :: {Set} -> {Set} -> {Set}
        [uop] :: {Set} -> {Bool}
        A [bop] B ~> [uop] (A [bop'] B)
     */
    // TODO: doesn't cover all cases
    static Set<ExprBinary.Op> bop_ssb = Stream.of(ExprBinary.Op.IN, ExprBinary.Op.NOT_IN).collect(Collectors.toSet());
    static Set<ExprBinary.Op> bop_sss = Stream.of(ExprBinary.Op.INTERSECT).collect(Collectors.toSet());
    static Set<ExprUnary.Op> uop_sb = Stream.of(ExprUnary.Op.NO, ExprUnary.Op.SOME, ExprUnary.Op.ONE).collect(Collectors.toSet());
    private static List<Mutator> binaryToUnary(ExprBinary original){
        List<Mutator> ret = new ArrayList<>();
        if(!bop_ssb.contains(original.op)){
            return ret;
        }

        for(ExprBinary.Op bop : bop_sss){
            for(ExprUnary.Op uop : uop_sb){
                Expr exprBin = ExprMaker.make(original.left, original.right, bop);
                Expr mutant = ExprMaker.make(exprBin, uop);
                ret.add(new TransmuteBinaryOperator(original, mutant));
            }
        }

        return ret;
    }

    public static List<Mutator> generate(Location location) {
        List<Mutator> ret = new ArrayList<>();
        if(!(location.expr instanceof ExprBinary)){
            return ret;
        }

        ret.addAll(binaryToUnary((ExprBinary) location.expr));

        return ret;
    }
}
