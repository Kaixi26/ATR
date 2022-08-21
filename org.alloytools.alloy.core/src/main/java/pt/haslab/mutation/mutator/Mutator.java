package pt.haslab.mutation.mutator;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.alloy4.Pos;
import edu.mit.csail.sdg.ast.*;
import org.eclipse.jdt.annotation.NonNull;
import pt.haslab.mutation.Location;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static edu.mit.csail.sdg.ast.ExprUnary.Op.*;
import static edu.mit.csail.sdg.ast.ExprUnary.Op.ONE;

public class Mutator {

    public static final Set<ExprUnary.Op> uops_bool2bool =
            Stream.of(ExprUnary.Op.NOT, ExprUnary.Op.AFTER, ExprUnary.Op.ALWAYS, ExprUnary.Op.EVENTUALLY, ExprUnary.Op.BEFORE, ExprUnary.Op.HISTORICALLY, ExprUnary.Op.ONCE).collect(Collectors.toSet());

    public static final Set<ExprUnary.Op> uops_rel2bool =
            new HashSet<>(Arrays.asList(NO, SOME, LONE, ONE));

    public static final Set<ExprUnary.Op> uops_rel2rel =
            new HashSet<>(Arrays.asList(TRANSPOSE, CLOSURE, RCLOSURE));

    public static final Set<ExprBinary.Op> bops_boolbool2bool =
            Stream.of(ExprBinary.Op.AND, ExprBinary.Op.OR, ExprBinary.Op.IFF, ExprBinary.Op.IMPLIES, ExprBinary.Op.UNTIL, ExprBinary.Op.RELEASES, ExprBinary.Op.SINCE, ExprBinary.Op.TRIGGERED).collect(Collectors.toSet());

    public static final Set<ExprBinary.Op> bops_setset2set =
            Stream.of(ExprBinary.Op.PLUS, ExprBinary.Op.MINUS, ExprBinary.Op.INTERSECT).collect(Collectors.toSet());
    public static Set<ExprBinary.Op> bops_setset2bool = Stream.of(ExprBinary.Op.IN, ExprBinary.Op.NOT_IN, ExprBinary.Op.EQUALS, ExprBinary.Op.NOT_EQUALS).collect(Collectors.toSet());
    public static Set<ExprQt.Op> exprqts_expr2bool = Stream.of(ExprQt.Op.NO, ExprQt.Op.ONE, ExprQt.Op.LONE, ExprQt.Op.SOME, ExprQt.Op.ALL).collect(Collectors.toSet());

    public Location original;
    public Expr mutant;

    /* array of pointers to blacklisted nodes */
    public int[] blacklisted = new int[0];

    /* Mutators made available only when this mutator is applied */
    private List<Mutator> generatedMutators = null;

    public String name = "Mutator";
    public ConstList<Sig> sigs;

    public static Mutator make(@NonNull Location original, @NonNull Expr mutant) {
        Mutator ret = new Mutator();
        ret.original = original;
        ret.mutant = mutant;
        return ret;
    }

    public static Mutator make(@NonNull Expr original, @NonNull Expr mutant) {
        return Mutator.make(new Location(original, false, new ArrayList<>()), mutant);
    }

    private List<Mutator> calculateGeneratedMutators() {
        return new ArrayList<>();
    }

    public List<Mutator> getGeneratedMutators() {
        if (this.generatedMutators == null) {
            this.generatedMutators = calculateGeneratedMutators().stream().filter(Generator::isGeneratableAsChild).collect(Collectors.toList());
        }
        return this.generatedMutators;
    }

    public void setBlacklisted(Stream<Expr> exprs) {
        this.setBlacklisted(exprs.collect(Collectors.toList()));
    }

    void setBlacklisted(Collection<Expr> exprs) {
        this.blacklisted = new int[exprs.size()];
        int i = 0;
        for (Expr expr : exprs) {
            this.blacklisted[i++] = System.identityHashCode(expr);
        }
    }

    public boolean isBlacklisted(Expr e) {
        int ptr = System.identityHashCode(e);
        for (int i : this.blacklisted) {
            if (i == ptr) {
                return true;
            }
        }
        return ptr == System.identityHashCode(original.expr);
    }

    @Override
    public String toString() {
        Pos pos = original.expr.pos();
        return this.getClass().getSimpleName() + "{" +
                "'" + name + "', " +
                "pos='(" + pos.x + "," + pos.y + ")-(" + pos.x2 + "," + pos.y2 + ")'," +
                "}";
    }

    public String toJSON() {
        return "{" +
                "\"mutator\": \"" + this + "\"," +
                "\"pos\": \"" + this.mutant.pos + "\"" +
                "}";
    }

    public Optional<String> hint() {
        return Optional.empty();
    }

    public String describe() {
        return this.getClass().getSimpleName() + "\n"
                + this.original.expr.pos + "\n"
                + "<|" + this.original + "\n"
                + "|>" + this.mutant;
    }
}
