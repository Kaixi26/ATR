package pt.haslab.mutation;

import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;

import java.util.*;
import java.util.stream.Collectors;

public class MutationStepper {
    ListStack<Mutator> mutators = new ListStack<>();

    Stack<Integer> current = new Stack<>();
    MSet<Expr> blacklisted = new MSet<>();
    int currentDepth = 1;
    int maxDepth = 0;

    public int numGeneratedMutationCombinations = 0;
    public int numPrunnedMutationCombinations = 0;

    private MutationStepper() {

    }

    public static MutationStepper make(Collection<Expr> repairTargetLocations, int maxDepth){
        MutationStepper ret = new MutationStepper();

        for(Expr repairTargetLocation : repairTargetLocations){
            ret.mutators.addBuffered(Generator.generateMutators(repairTargetLocation));
        }
        ret.mutators.pushBuffered();
        ret.pushCurrent(0);

        ret.maxDepth = maxDepth;

        return ret;
    }

    private void pushCurrent(Integer i){
        current.push(i);
        blacklisted.union(mutators.get(i).blacklisted);
    }

    private Integer popCurrent(){
        blacklisted.difference(mutators.get(current.peek()).blacklisted);
        return current.pop();
    }

    private void incCurrent(){
        pushCurrent(popCurrent() + 1);
    }

    private boolean isCurrentPrunable(){
        for(int i = 0; i < current.size(); i++){
            for(int j = 0; j < current.size(); j++){
                if(i == j){
                    continue;
                }
                boolean blacklisted =
                        mutators.get(current.get(i)).blacklisted
                                .contains(mutators.get(current.get(j)).original);
                if(blacklisted){
                    return true;
                }
            }
        }
        return false;
    }

    public Candidate getCurrent(){
        return new Candidate(current.stream().map(index -> mutators.get(index)).collect(Collectors.toList()));
    }

    private void step(){
        int popped = 0;
        while(current.size() > 0
                && (current.peek() >= mutators.size()-1
                    || current.peek() + popped >= mutators.size()-1)){
            popCurrent();
            popped++;
        }

        if(popped == currentDepth){
            currentDepth++;
            for(int i = 0; i < currentDepth; i++){
                pushCurrent(i);
            }
        } else if(popped > 0){
            incCurrent();
            int prev = current.peek();
            for(int i = 0; i < popped; i++){
                pushCurrent(prev + i + 1);
            }
        } else {
            incCurrent();
        }

    }

    public boolean next(){
        int loops = 0;
        do {
            loops++;
            if (currentDepth > maxDepth) {
                return false;
            }
            step();
            numGeneratedMutationCombinations++;
        } while(isCurrentPrunable());
        numPrunnedMutationCombinations += loops-1;
        return true;
    }

}
