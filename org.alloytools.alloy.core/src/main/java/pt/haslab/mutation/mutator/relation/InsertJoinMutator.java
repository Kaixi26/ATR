package pt.haslab.mutation.mutator.relation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.Sig;
import edu.mit.csail.sdg.ast.Type;
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
        if (original.expr.type().arity() != 1) {
            return;
        }
        for (Sig.Field field : fields) {
            // check if types are compatible to join
            Type left_join = field.type().join(original.expr.type());
            if (!left_join.equals(Sig.NONE.type()) && left_join.arity() == 1) {
                accumulator.add(new InsertJoinMutator(original, ExprMaker.make(field, original.expr, ExprBinary.Op.JOIN)));
            }

            Type right_join = original.expr.type().join(field.type());
            if (!right_join.equals(Sig.NONE.type()) && left_join.arity() == 1) {
                accumulator.add(new InsertJoinMutator(original, ExprMaker.make(original.expr, field, ExprBinary.Op.JOIN)));
            }
        }
    }
}