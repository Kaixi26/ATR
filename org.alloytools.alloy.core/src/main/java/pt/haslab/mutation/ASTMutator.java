package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import java.util.stream.Collectors;

public class ASTMutator {
    Expr root;
    List<Expr> locations = new ArrayList<>();
    ListStack<Mutator> mutators = new ListStack<>();

    Stack<Integer> current = new Stack<>();
    MSet<Expr> blacklisted = new MSet<>();
    int currentDepth = 1;
    int maxDepth = 0;

    public int numGeneratedMutationCombinations = 0;
    public int numPrunnedMutationCombinations = 0;

    public ASTMutator(Expr expr, int maxDepth){
        VisitQuery<Object> addLocations = new VisitQuery<Object>() {
            private void add(Expr x){
                locations.add(x);
                mutators.addBuffered(Generator.generateMutators(x));
            }
            public Void visit(ExprUnary x) throws Err {
                visitThis(x.sub);
                this.add(x);
                return null;
            }
            public Void visit(ExprBinary x) throws Err {
                visitThis(x.left);
                visitThis(x.right);
                this.add(x);
                return null;
            }
            public Void visit(ExprList x) throws Err {
                for (Expr arg : x.args) {
                    visitThis(arg);
                }
                this.add(x);
                return null;
            }
            public Void visit(Sig x) throws Err {
                this.add(x);
                return null;
            }
        };

        this.root = expr;
        this.maxDepth = maxDepth;

        addLocations.visitThis(this.root);
        this.mutators.pushBuffered();

        pushCurrent(0);
        System.out.println(this.mutators);
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

    public List<Mutator> getCurrent(){
        return current.stream().map(index -> mutators.get(index)).collect(Collectors.toList());
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
