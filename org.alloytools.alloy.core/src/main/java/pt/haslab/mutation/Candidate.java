package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.ErrorSyntax;
import edu.mit.csail.sdg.alloy4.ErrorType;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.ExprConstant;
import edu.mit.csail.sdg.ast.Module;
import org.eclipse.jdt.annotation.Nullable;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;
import pt.haslab.util.Variabilizer;

import java.util.*;
import java.util.stream.Collectors;

public class Candidate {
    public final List<Mutator> mutators;
    public final Candidate parent;
    public List<Candidate> children = null;
    public Optional<PruneReason> prunned = Optional.empty();
    public boolean visited = false;

    public final String extensionalityID;
    public final String variabilizationID;

    Candidate(Candidate parent, List<Mutator> mutators) {
        this.mutators = mutators;
        this.variabilizationID = calculateVariabilizationID(mutators);
        this.extensionalityID = calculateExtensionalityID(mutators);
        this.parent = parent;
    }

    public static Candidate empty() {
        return new Candidate(null, new ArrayList<>());
    }

    public Expr apply(Expr mutationTarget) throws ErrorType, ErrorSyntax {
        return MutatorApplier.make(mutators).apply(mutationTarget);
    }

    @Nullable
    public List<Map<Expr, Expr>> variabilize(List<Expr> mutationTargets) {
        int sz = this.mutators.size();
        if (sz == 0) {
            return null;
        }

        if (!this.mutators.get(sz - 1).original.expr.type().is_bool) {
            return null;
        }

        Expr[] bools = {
                ExprConstant.makeNUMBER(0).equal(ExprConstant.makeNUMBER(1)),
                ExprConstant.makeNUMBER(1).equal(ExprConstant.makeNUMBER(1))
        };

        List<Map<Expr, Expr>> ret = new ArrayList<>();
        for (Expr bool : bools) {
            Map<Expr, Expr> mappings = new HashMap<>();
            for (Expr mutationTarget : mutationTargets) {
                Mutator mutator = Mutator.make(mutators.get(sz - 1).original, bool);
                List<Mutator> mutators = new ArrayList<>(this.mutators);
                mutators.set(sz - 1, mutator);
                mappings.put(mutationTarget, MutatorApplier.make(mutators).apply(mutationTarget));
            }
            ret.add(mappings);
        }

        return ret;
    }

    @Override
    public String toString() {
        return "Candidate{" + mutators.toString() + '}';
    }

    private void generateChild(Mutator mutator) {
        if (this.isBlacklisted(mutator.original.expr)) {
            return;
        }

        List<Mutator> childMutators = new ArrayList<>(this.mutators.size() + 1);
        childMutators.addAll(this.mutators);
        childMutators.add(mutator);

        this.children.add(new Candidate(this, childMutators));
    }

    public List<Candidate> generateChildren(Collection<Mutator> mutators) {
        if (this.children == null) {
            this.children = new ArrayList<>();
            for (Mutator mutator : mutators) {
                generateChild(mutator);
            }

            this.mutators.forEach(m -> {
                for (Mutator mutator : m.getGeneratedMutators()) {
                    generateChild(mutator);
                }
            });
        }
        return this.children;
    }

    private boolean isBlacklisted(Expr e) {
        for (Mutator mutator : this.mutators) {
            if (mutator.isBlacklisted(e)) {
                return true;
            }
        }
        return false;
    }

    private static String calculateVariabilizationID(List<Mutator> mutators) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < mutators.size(); i++) {
            if (i > 0) {
                sb.append(",");
            }
            sb.append(System.identityHashCode(mutators.get(i).original));
        }
        return sb.toString();
    }

    private static String calculateExtensionalityID(List<Mutator> mutators) {
        if (mutators.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        List<Integer> hashCodes = mutators.stream().map(System::identityHashCode).sorted().collect(Collectors.toList());
        sb.append(hashCodes.get(0));
        for (int i = 1; i < hashCodes.size(); i++) {
            sb.append(",");
            sb.append(hashCodes.get(i));
        }
        return sb.toString();
    }

    String getExtensionalityID() {
        return extensionalityID;
    }

    String getVariabilizationID() {
        return variabilizationID;
    }

    public String toJSON() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        prunned.ifPresent(pruneReason -> sb.append("\"prunned\":\"").append(pruneReason.toString()).append("\","));
        sb.append("\"mutants\":[");
        if (mutators.size() > 0) {
            sb.append(mutators.get(0).toJSON());
            for (int i = 1; i < mutators.size(); i++) {
                sb.append(",").append(mutators.get(i).toJSON());
            }
        }
        sb.append("],");

        sb.append("\"children\":[");
        List<String> children = this.children == null ? new ArrayList<>() : this.children.stream().map(Candidate::toJSON).collect(Collectors.toList());
        if (children.size() > 0) {
            sb.append(children.get(0));
            for (int i = 1; i < children.size(); i++) {
                sb.append(",").append(children.get(i));
            }
        }
        sb.append("]}");
        return sb.toString();
    }

    public boolean hasClass(Class<?> c){
        for (Mutator mutator : this.mutators) {
            if(mutator.getClass().equals(c)){
                return true;
            }
        }
        return false;
    }

    public boolean hasClasses(Collection<Class<?>> cs){
        return cs.stream().allMatch(this::hasClass);
    }
}
