package pt.haslab.mutation;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4.Pos;
import edu.mit.csail.sdg.ast.*;
import pt.haslab.mutation.mutator.Mutator;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.*;

public class MutatorApplier extends VisitReturn<Expr> {
    Map<Integer, Mutator> mutators = new HashMap<>(4);

    private MutatorApplier(){}

    public static MutatorApplier make(List<Mutator> muts){
        MutatorApplier mut = new MutatorApplier();
        for (Mutator mutator : muts) {
            mut.mutators.put(System.identityHashCode(mutator.original), mutator);
        }
        return mut;
    }

    public Expr apply(Expr x) throws Err {
        return visitThis(x);
    }

    private Optional<Expr> attemptComputeMutation(Expr x){
        Mutator mut = mutators.getOrDefault(System.identityHashCode(x), null);
        if(mut != null){
            mutators.remove(System.identityHashCode(x));
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
        switch (x.op){
            case IN:
                return visitThis(x.left).in(visitThis(x.right));
            case EQUALS:
                return visitThis(x.left).equal(visitThis(x.right));
            case NOT_EQUALS:
                return visitThis(x.left).equal(visitThis(x.right)).not(); /* check if this has equivalent */
            default:
                throw new NotImplementedException();
        }
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
        throw new NotImplementedException();
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
        throw new NotImplementedException();
    }

    @Override
    public Expr visit(ExprLet x) throws Err {
        throw new NotImplementedException();
    }

    @Override
    public Expr visit(ExprQt x) throws Err {
        Optional<Expr> mutation = attemptComputeMutation(x);
        if(mutation.isPresent()){
            return visitThis(mutation.get());
        }
        ArrayList<Decl> moreDecls = new ArrayList<>();
        for(int i = 1; i < x.decls.size(); i++){
            moreDecls.add(x.decls.get(i));
        }
        switch (x.op){
            case NO:
                return visitThis(x.sub).forNo(x.decls.get(0), moreDecls.toArray(new Decl[0]));
            case SOME:
                return visitThis(x.sub).forSome(x.decls.get(0), moreDecls.toArray(new Decl[0]));
            case ALL:
                return visitThis(x.sub).forAll(x.decls.get(0), moreDecls.toArray(new Decl[0]));
            case ONE:
                return visitThis(x.sub).forOne(x.decls.get(0), moreDecls.toArray(new Decl[0]));
            default:
                throw new NotImplementedException();
        }
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
        throw new NotImplementedException();
    }
}
