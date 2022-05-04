package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.util.ExprMaker;

import java.util.ArrayList;
import java.util.List;

public class SigMutator {

    /*
        B subset of A
        C subset of A
        B ~> C
     */
    static private class ReplaceMutator extends Mutator {
        private ReplaceMutator(Location original, Expr expr) {
            this.original = original;
            this.mutant = expr;
            this.name = original.expr + "->" + expr;
        }

        public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
            for (Sig sig : sigs) {
                // TODO: maybe it can be filtered better?
                if (!original.expr.equals(sig)) {
                    accumulator.add(new ReplaceMutator(original, ExprMaker.make(sig, ExprUnary.Op.NOOP)));
                }
            }
        }

        public static void generate(List<Mutator> accumulator, Location original, List<ExprHasName> vars) {
            for (ExprHasName var : vars) {
                if (original.expr.type() == var.type()) {
                    accumulator.add(new ReplaceMutator(original, ExprMaker.make(var, ExprUnary.Op.NOOP)));
                }
            }
        }
    }

    /*
        B subset of A
        C subset of A
        B ~> B + C
     */
    static private class ToBinaryMutator extends Mutator {
        private ToBinaryMutator(Location original, Expr expr) {
            this.original = original;
            this.mutant = expr;
            this.name = original + "->" + expr;
        }

        public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs) {
            for (Sig sig : sigs) {
                if (original.expr.type() == sig.type() && !original.expr.equals(sig)) {
                    Expr right = ExprMaker.make(sig, ExprUnary.Op.NOOP);
                    for (ExprBinary.Op op : Mutator.bops_setset2set) {
                        accumulator.add(new ToBinaryMutator(original, ExprMaker.make(original.expr, right, op)));
                    }
                }
            }
        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, List<ExprHasName> vars) {
        ReplaceMutator.generate(accumulator, original, sigs);
        ReplaceMutator.generate(accumulator, original, vars);
        ToBinaryMutator.generate(accumulator, original, sigs);
    }
}
