package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Generator;
import pt.haslab.mutation.mutator.Mutator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ASTMutator {
    Expr root;
    List<Expr> locations = new ArrayList<>();
    List<Mutator> mutators = new ArrayList<>();

    int currentMutator = 0;

    public ASTMutator(Expr expr){
        this.root = expr;
        VisitQuery<Object> addLocations = new VisitQuery<Object>() {
            private void add(Expr x){
                locations.add(x);
                mutators.addAll(Generator.generateMutators(x));
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
        addLocations.visitThis(this.root);

    }

    public List<Mutator> getCurrent(){
        return Collections.singletonList(mutators.get(currentMutator));
    }

    public boolean next(){
        currentMutator++;
        return currentMutator < mutators.size();
    }


}
