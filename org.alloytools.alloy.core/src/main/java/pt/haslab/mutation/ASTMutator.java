package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.mutation.mutator.RTO;

import java.util.*;
import java.util.stream.Collectors;

public class ASTMutator {
    Expr root;
    List<Expr> locations = new ArrayList<>();
    List<MutationLocation> mutationLocations;

    int currentLocIndex = 0;
    int currentMutIndex = 0;

    static class MutationLocation {
        Expr expr;
        List<Mutator> mutators;

        MutationLocation(Expr expr){
            this.expr = expr;
            this.mutators = generateMutators(expr);
        }

        static List<Mutator> generateMutators(Expr expr) {
            List<Mutator> ret = new ArrayList<>();
            ret.addAll(RTO.generate(expr));
            return ret;
        }

        @Override
        public String toString() {
            return "MutationLocation{" +
                    "expr=" + expr +
                    ", mutators=" + mutators +
                    '}';
        }
    }

    public ASTMutator(Expr expr){
        this.root = expr;
        VisitQuery<Object> addLocations = new VisitQuery<Object>() {
            public Void visit(ExprUnary x) throws Err {
                visitThis(x.sub);
                locations.add(x);
                return null;
            }
            public Void visit(ExprBinary x) throws Err {
                visitThis(x.left);
                visitThis(x.right);
                locations.add(x);
                return null;
            }
            public Void visit(ExprList x) throws Err {
                for (Expr arg : x.args) {
                    visitThis(arg);
                }
                locations.add(x);
                return null;
            }
            public Void visit(Sig x) throws Err {
                locations.add(x);
                return null;
            }
        };
        addLocations.visitThis(this.root);
        mutationLocations = locations
                .stream()
                .map(MutationLocation::new)
                .filter(ml -> ml.mutators.size() > 0)
                .collect(Collectors.toList());
    }

    public List<Mutator> getCurrent(){
        return Arrays.asList(mutationLocations.get(currentLocIndex).mutators.get(currentMutIndex));
    }

    public boolean next(){
        currentMutIndex += 1;
        if(currentMutIndex >= mutationLocations.get(currentLocIndex).mutators.size()){
            currentMutIndex = 0;
            currentLocIndex += 1;
            return currentLocIndex < mutationLocations.size();
        }
        return true;
    }


}
