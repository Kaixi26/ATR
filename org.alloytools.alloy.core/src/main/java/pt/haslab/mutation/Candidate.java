package pt.haslab.mutation;

import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Module;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.Variabilizer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class Candidate {
    public final List<Mutator> mutators;
    public final Candidate parent;
    public List<Candidate> children = null;
    public Optional<PruneReason> prunned = Optional.empty();

    public final String extensionalityID;
    public final String variabilizationID;

    public Candidate(List<Mutator> mutators) {
        this.parent = null;
        this.mutators = mutators;
        this.variabilizationID = calculateVariabilizationID(mutators);
        this.extensionalityID = calculateExtensionalityID(mutators);
    }

    Candidate(Candidate parent, List<Mutator> mutators) {
        this.parent = parent;
        this.mutators = mutators;
        this.variabilizationID = calculateVariabilizationID(mutators);
        this.extensionalityID = calculateExtensionalityID(mutators);
    }

    public Expr apply(Expr mutationTarget) {
        return MutatorApplier.make(mutators).apply(mutationTarget);
    }

    public Expr variabilize(Expr mutationTarget) {
        Expr variabilized = Variabilizer.variabilize(mutationTarget, mutators.get(mutators.size() - 1).original);
        return apply(variabilized);
    }

    @Override
    public String toString() {
        return "Candidate{" + mutators.toString() + '}';
    }

    public List<Candidate> generateChildren(Collection<Mutator> mutators) {
        if (this.children == null) {
            this.children = new ArrayList<>();
            for (Mutator mutator : mutators) {
                if (this.mutators.stream().anyMatch(m -> m.original == mutator.original)) {
                    continue;
                }
                List<Mutator> childMutators = new ArrayList<>(this.mutators.size() + 1);
                childMutators.addAll(this.mutators);
                childMutators.add(mutator);
                this.children.add(new Candidate(this, childMutators));
            }
        }
        return this.children;
    }

    private static String calculateVariabilizationID(List<Mutator> mutators) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < mutators.size(); i++) {
            if(i > 0){
                sb.append(",");
            }
            sb.append(System.identityHashCode(mutators.get(i)));
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
}
