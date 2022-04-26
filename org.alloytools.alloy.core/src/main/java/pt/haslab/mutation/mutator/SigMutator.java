package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
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
        private ReplaceMutator(Expr expr, Expr original) {
            this.original = original;
            this.mutant = expr;
            this.name = original + "->" + expr;
        }

        public static void generate(List<Mutator> accumulator, Expr expr, ConstList<Sig> sigs) {
            for (Sig sig : sigs) {
                if (expr.type() == sig.type() && !expr.equals(sig)) {
                    accumulator.add(new ReplaceMutator(ExprMaker.make(sig, ExprUnary.Op.NOOP), expr));
                }
            }
        }

        public static void generate(List<Mutator> accumulator, Expr expr, List<ExprHasName> vars) {
            for (ExprHasName var : vars) {
                if (expr.type() == var.type()) {
                    accumulator.add(new ReplaceMutator(ExprMaker.make(var, ExprUnary.Op.NOOP), expr));
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
        private ToBinaryMutator(Expr expr, Expr original) {
            this.original = original;
            this.mutant = expr;
            this.name = original + "->" + expr;
        }

        public static void generate(List<Mutator> accumulator, Expr expr, ConstList<Sig> sigs) {
            for (Sig sig : sigs) {
                if (expr.type() == sig.type() && !expr.equals(sig)) {
                    Expr right = ExprMaker.make(sig, ExprUnary.Op.NOOP);
                    for (ExprBinary.Op op : Mutator.bops_setset2set) {
                        accumulator.add(new ToBinaryMutator(ExprMaker.make(expr, right, op), expr));
                    }
                }
            }
        }
    }

    public static void generate(List<Mutator> accumulator, Expr expr, ConstList<Sig> sigs, List<ExprHasName> vars) {
        ReplaceMutator.generate(accumulator, expr, sigs);
        ReplaceMutator.generate(accumulator, expr, vars);
        ToBinaryMutator.generate(accumulator, expr, sigs);
    }
}
