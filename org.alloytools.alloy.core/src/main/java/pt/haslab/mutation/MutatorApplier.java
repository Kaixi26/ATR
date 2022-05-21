package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4.Pos;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprMaker;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.*;

public class MutatorApplier extends VisitReturn<Expr> {
    List<Mutator> mutators;

    private MutatorApplier(){}

    public static MutatorApplier make(List<Mutator> muts){
        MutatorApplier mut = new MutatorApplier();
        mut.mutators = new ArrayList<>(muts.size());
        mut.mutators.addAll(muts);
        return mut;
    }

    public Expr apply(Expr x) throws Err {
        return visitThis(x);
    }

    private Optional<Expr> attemptComputeMutation(Expr x){
        int mutIndex = -1;
        for(int i = 0; i < mutators.size(); i++){
            if(mutators.get(i).original.expr == x){
                mutIndex = i;
                break;
            }
        }
        if(mutIndex != -1){
            Mutator mut = mutators.remove(mutIndex);
            return Optional.of(mut.mutant);
        } else {
            return Optional.empty();
        }
    }

    @Override
    public Expr visit(ExprBinary x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return ExprMaker.make(visitThis(x.left), visitThis(x.right), x.op);
    }

    @Override
    public Expr visit(ExprList x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }

        List<Expr> args = new ArrayList<>(x.args.size());
        for(Expr arg : x.args){
            args.add(visitThis(arg));
        }
        return ExprList.make(x.pos, x.closingBracket, x.op, args);
    }

    @Override
    public Expr visit(ExprCall x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return x;
    }

    @Override
    public Expr visit(ExprConstant x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return x;
    }

    @Override
    public Expr visit(ExprITE x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return visitThis(x.cond).ite(visitThis(x.left), visitThis(x.right));
    }

    @Override
    public Expr visit(ExprLet x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        try {
            return ExprLet.make(x.pos, (ExprVar) visitThis(x.var), visitThis(x.expr), visitThis(x.sub));
        } catch (ClassCastException ignored){
            return x;
        }
    }

    @Override
    public Expr visit(ExprQt x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        ArrayList<Decl> moreDecls = new ArrayList<>();
        for(int i = 0; i < x.decls.size(); i++){
            Decl decl = x.decls.get(i);
            moreDecls.add(new Decl(decl.isPrivate, decl.disjoint, decl.disjoint2, decl.isVar, decl.names, visitThis(decl.expr)));
        }

        return ExprMaker.make(moreDecls, visitThis(x.sub), x.op);
    }

    @Override
    public Expr visit(ExprUnary x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }

        return x.op.make(x.pos, visitThis(x.sub));
    }

    @Override
    public Expr visit(ExprVar x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return x;
    }

    @Override
    public Expr visit(Sig x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return x;
    }

    @Override
    public Expr visit(Sig.Field x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        return x;
    }
}
