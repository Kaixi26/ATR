package pt.haslab.mutation.mutator.signature;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.Sig;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;

import java.util.List;

public class InsertJoinMutator extends Mutator {

    private InsertJoinMutator(Location original, Expr expr) {
        this.original = original;
        this.mutant = expr;
        this.name = original.expr + "->" + expr;
    }

    public static void generate(List<Mutator> accumulator, Location original, ConstList<Sig> sigs, ConstList<Sig.Field> fields) {
        if (original.expr.type().arity() == 1) {
            for (Sig.Field field : fields) {
                // check if types are compatible to join
                if (!field.type().join(original.expr.type()).equals(Sig.NONE.type())) {
                    accumulator.add(new InsertJoinMutator(original, ExprMaker.make(field, original.expr, ExprBinary.Op.JOIN)));
                }
                if (!original.expr.type().join(field.type()).equals(Sig.NONE.type())) {
                    accumulator.add(new InsertJoinMutator(original, ExprMaker.make(original.expr, field, ExprBinary.Op.JOIN)));
                }
            }
        }
    }
}
