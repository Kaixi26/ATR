package pt.haslab.mutation;

import edu.mit.csail.sdg.ast.Expr;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.Variabilizer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Candidate {
    final List<Mutator> mutators;
    final Candidate parent = null;
    List<Candidate> children = null;

    Candidate(List<Mutator> mutators){
        this.mutators = mutators;
    }

    public Expr apply(Expr mutationTarget){
        return MutatorApplier.make(mutators).apply(mutationTarget);
    }

    public Expr variabilize(Expr mutationTarget){
        Expr variabilized = Variabilizer.variabilize(mutationTarget, mutators.get(mutators.size()-1).original);
        return apply(variabilized);
    }

    @Override
    public String toString() {
        return "Candidate{" + mutators.toString() + '}';
    }

    /*
    List<Candidate> generateChildren(Collection<Mutator> mutators){
        if(this.children == null){
            this.children = new ArrayList<>();
            for(Mutator mutator : mutators){
                mutators.stream().allMatch(m -> m.original != mutator.original);
            }
        }
        return this.children;
    }
     */

}
