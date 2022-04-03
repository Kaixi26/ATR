package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.ast.*;
import edu.mit.csail.sdg.translator.A4Solution;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;

import java.util.*;

public class MutationStepper {
    public final List<Mutator> baseMutators;
    public final int maxDepth;

    public final ConstList<Sig> modelSigs;

    public final List<Candidate> candidates = new ArrayList<>();

    int start = 0;
    int current = 0;
    int depth = 0;

    HashMap<String, Candidate> extensionalities = new HashMap<>();
    HashMap<String, Candidate> variabilizations = new HashMap<>();


    private MutationStepper(List<Mutator> baseMutators, ConstList<Sig> modelSigs, int maxDepth) {
        this.baseMutators = baseMutators;
        this.maxDepth = maxDepth;
        this.candidates.add(new Candidate(new ArrayList<>()));
        this.modelSigs = modelSigs;
    }

    public static MutationStepper make(Collection<Expr> repairTargetLocations, ConstList<Sig> modelSigs, int maxDepth) {
        List<Mutator> baseMutators = new ArrayList<>();

        for (Expr repairTargetLocation : repairTargetLocations) {
            baseMutators.addAll(Generator.generateMutators(repairTargetLocation, modelSigs));
        }

        return new MutationStepper(baseMutators, modelSigs, maxDepth);
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

    public void addVariabilization(Candidate candidate) {
        variabilizations.putIfAbsent(candidate.getVariabilizationID(), candidate);
    }

}
