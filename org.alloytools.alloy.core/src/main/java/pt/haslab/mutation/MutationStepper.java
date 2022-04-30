package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import edu.mit.csail.sdg.translator.A4Solution;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.LocationAggregator;

import java.util.*;

public class MutationStepper {
    public final List<Mutator> baseMutators;
    public final Map<Expr, Set<Expr>> reachableFrom;
    public final int maxDepth;

    public final ConstList<Sig> modelSigs;

    public final List<Candidate> candidates = new ArrayList<>();

    int start = 0;
    int current = 0;
    int depth = 0;

    HashMap<String, Candidate> extensionalities = new HashMap<>();
    HashMap<String, Candidate> variabilizations = new HashMap<>();


    private MutationStepper(List<Mutator> baseMutators, Map<Expr, Set<Expr>> reachableFrom, ConstList<Sig> modelSigs, int maxDepth) {
        this.baseMutators = baseMutators;
        this.maxDepth = maxDepth;
        this.candidates.add(Candidate.empty());
        this.modelSigs = modelSigs;
        this.reachableFrom = reachableFrom;
    }

    public static MutationStepper make(Collection<Location> repairTargetLocations, ConstList<Sig> modelSigs, int maxDepth) {
        List<Mutator> baseMutators = new ArrayList<>();
        Map<Expr, Set<Expr>> reachableFrom = new HashMap<>();

        for (Location repairTargetLocation : repairTargetLocations) {
            baseMutators.addAll(Generator.generateMutators(repairTargetLocation, modelSigs));

            for(Location sublocation : LocationAggregator.BreadthBottomUp(repairTargetLocation.expr)){
                reachableFrom.compute(repairTargetLocation.expr, (key, value) -> {
                    if (value == null) {
                        return new HashSet<>(Collections.singleton(sublocation.expr));
                    } else {
                        value.add(sublocation.expr);
                        return value;
                    }
                });
            }
        }

        return new MutationStepper(baseMutators, reachableFrom, modelSigs, maxDepth);
    }

    public Candidate getCurrent() {
        return candidates.get(current);
    }

    public boolean step() {
        int candidateSize = candidates.size();
        if (current + 1 >= candidateSize) {
            depth++;
            if (depth > maxDepth) {
                return false;
            }
            for (int i = start; i < candidateSize; i++) {
                candidates.addAll(candidates.get(i).generateChildren(this.baseMutators));
            }
            start = candidateSize;
            if (candidateSize == candidates.size()) {
                return false;
            }
        }
        current++;
        return true;
    }

    public boolean next() {
        while (step()) {
            Candidate curr = getCurrent();
            curr.visited = true;
            String extensionalityID = curr.getExtensionalityID();
            if (extensionalities.putIfAbsent(extensionalityID, curr) != null) {
                curr.prunned = Optional.of(PruneReason.EXTENSIONALITY);
                continue;
            } else if (variabilizations.containsKey(curr.getVariabilizationID())) {
                curr.prunned = Optional.of(PruneReason.VARIABILIZATION);
                continue;
            }
            return true;
        }
        return false;
    }

    public void pruneByVariabilization(Candidate candidate) {
        Expr variabilizedMutatorOriginal = candidate.mutators.get(candidate.mutators.size() - 1).original.expr;
        Set<Expr> reachable = reachableFrom.getOrDefault(variabilizedMutatorOriginal, null);

        assert reachable != null;
        assert reachable.contains(variabilizedMutatorOriginal);

        candidate.parent.children.stream()
                .filter(c -> reachable.contains(c.mutators.get(c.mutators.size() - 1).original))
                .forEach(c -> {
                    if (!c.visited) {
                        c.prunned = Optional.of(PruneReason.VARIABILIZATION);
                    }
                });
    }

}
