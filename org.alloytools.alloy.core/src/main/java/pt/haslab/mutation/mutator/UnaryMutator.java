package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.relation.ExtendOrReduceMutator;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.LocationAggregator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class UnaryMutator {

    /*
        UOp expr ~> expr
    */
    private static class RemoveOperator extends Mutator {
        private RemoveOperator(Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            this.original = original;
            this.mutant = originalExpr.sub;
            this.name = originalExpr.op.name();
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (originalExpr.op == ExprUnary.Op.NOOP || originalExpr.type() != originalExpr.sub.type()) {
                return;
            }
            accumulator.add(new RemoveOperator(original));
        }
    }


    // TODO: needs review
    /*
        (NOOP Sig) ~> (NOOP Sig)'
        BooleanExpr ~> UOp BooleanExpr
     */
    private static class InsertOperator extends Mutator {
        private InsertOperator(Location original, ExprUnary expr) {
            this.original = original;
            this.mutant = expr;
            this.name = expr.op.name();
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (originalExpr.op == ExprUnary.Op.NOOP && originalExpr.sub instanceof Sig) {
                accumulator.add(new InsertOperator(original, (ExprUnary) originalExpr.prime()));
            }

            if (originalExpr.type().is_bool) {
                for (ExprUnary.Op op : Mutator.uops_bool2bool) {
                    System.out.println(new InsertOperator(original, ExprMaker.make(originalExpr, op)));
                    System.out.println(originalExpr);
                    accumulator.add(new InsertOperator(original, ExprMaker.make(originalExpr, op)));
                }
            }
        }
    }

    /*
        TODO: move this out
        (UOp A) ~> (UOp' A)
     */
    private static class ReplaceOperator extends Mutator {
        private ReplaceOperator(Location original, ExprUnary.Op op) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            this.original = original;
            this.name = originalExpr.op.name() + "->" + op.name();
            this.mutant = ExprMaker.make(originalExpr.sub, op);
        }

        public static void generate(List<Mutator> accumulator, Location original) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (Mutator.uops_set2bool.contains(originalExpr.op)) {
                for (ExprUnary.Op op : Mutator.uops_set2bool) {
                    if (op != originalExpr.op) {
                        accumulator.add(new ReplaceOperator(original, op));
                    }
                }
            }
        }

    }

    /*
        (A can be any expression)
        no A ~> no B
     */
    private static class ReplaceSetUnder extends Mutator {

        private ReplaceSetUnder(Location original, Expr expr) {
            this.original = original;
            this.mutant = expr;
            this.name = original.expr + "->" + expr;
            this.setBlacklisted(LocationAggregator.BreadthBottomUp(original.expr)
                    .stream().map(x -> x.expr).collect(Collectors.toList()));
        }

        public List<Mutator> getGeneratedMutators() {
            List<Mutator> ret = new ArrayList<>();
            ret.addAll(Generator.generateMutators(new Location(this.mutant, this.original.insideDecl, this.original.vars), this.sigs));
            ret.addAll(Generator.generateMutators(new Location(((ExprUnary) this.mutant).sub, this.original.insideDecl, this.original.vars), this.sigs));
            return ret;
        }

        private static void addIfCompatible(List<Mutator> accumulator, Location original, Expr expr, ConstList<Sig> sigs) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (!originalExpr.sub.equals(expr) && !expr.type().equals(Sig.NONE.type())) {
                accumulator.add(new ReplaceSetUnder(original, ExprMaker.make(expr, originalExpr.op)));
            }
        }

        public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
            ExprUnary originalExpr = (ExprUnary) original.expr;
            if (originalExpr.sub.type().arity() > 0) {
                for (Sig sig : sigs) {
                    addIfCompatible(accumulator, original, sig, sigs);
                }
                for (ExprHasName var : original.vars) {
                    if (var instanceof ExprVar) {
                        addIfCompatible(accumulator, original, var, sigs);
                    }
                }
                for (Sig.Field field : fields) {
                    addIfCompatible(accumulator, original, field, sigs);
                }
            }

        }
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        RemoveOperator.generate(accumulator, original);
        ReplaceOperator.generate(accumulator, original);
        ReplaceSetUnder.generate(accumulator, original, sigs, fields);
    }
}
