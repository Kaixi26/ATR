package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprHasName;
import edu.mit.csail.sdg.ast.ExprUnary;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;

import java.util.List;

public class ExprVarMutator {

    /*
        B subset of A
        C subset of A
        B ~> C
     */
    static private class ReplaceMutator extends Mutator {
        private ReplaceMutator(Location original, Expr expr) {
            this.original = original;
            this.mutant = expr;
            this.name = original + "->" + expr;
        }

        public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
            for (Sig sig : sigs) {
                if (original.expr.type() == sig.type()) {
                    accumulator.add(new ReplaceMutator(original, ExprMaker.make(sig, ExprUnary.Op.NOOP)));
                }
            }
        }

        public static void generate(List<Mutator> accumulator, Location original, List<ExprHasName> vars) {
            for (ExprHasName var : vars) {
                if (original.expr.type() == var.type() && !original.expr.equals(var)) {
                    accumulator.add(new ReplaceMutator(original, ExprMaker.make(var, ExprUnary.Op.NOOP)));
                }
            }
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, List<ExprHasName> vars) {
        ReplaceMutator.generate(accumulator, original, sigs);
        ReplaceMutator.generate(accumulator, original, vars);
    }
}
