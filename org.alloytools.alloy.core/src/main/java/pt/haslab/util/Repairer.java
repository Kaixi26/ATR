package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.translator.A4Options;
import edu.mit.csail.sdg.translator.A4Solution;
import edu.mit.csail.sdg.translator.TranslateAlloyToKodkod;
import pt.haslab.mutation.Candidate;
import pt.haslab.mutation.MutationStepper;
import pt.haslab.mutation.PruneReason;

import java.util.*;

public class Repairer {
    static final A4Reporter rep = new A4Reporter();
    static final A4Options opts = new A4Options();
    final Module module;
    Command command;
    ArrayList<Func> repairTargets;
    public MutationStepper mutationStepper;

    Map<Expr, Func> locationCorrespondentFunc = new HashMap<>();
    Map<Func, Expr> funcOriginalBody = new HashMap<>();
    List<Expr> repairTargetLocations = new ArrayList<>();

    public Optional<Candidate> solution = Optional.empty();

    private Repairer(Module module, Command command, ArrayList<Func> repairTargets) {
        this.module = module;
        this.command = command;
        this.repairTargets = repairTargets;
    }

    public static Repairer make(Module module, Command command, Collection<Func> repairTargets, int maxDepth) {
        Repairer ret = new Repairer(module, command, new ArrayList<>(repairTargets));

        for (Func repairTarget : repairTargets) {
            ret.funcOriginalBody.put(repairTarget, repairTarget.getBody());

            Collection<Expr> repairTargetLocations = LocationAggregator.BreadthBottomUp(repairTarget.getBody());
            ret.repairTargetLocations.addAll(repairTargetLocations);

            for (Expr repairTargetLocation : repairTargetLocations) {
                ret.locationCorrespondentFunc.put(repairTargetLocation, repairTarget);
            }
        }

        ret.mutationStepper = MutationStepper.make(ret.repairTargetLocations, maxDepth);

        return ret;
    }

    /* If true it means there might be a solution in the location of the current candidate */
    public boolean canPruneWithVariabilization(Candidate candidate, A4Solution ans){
        for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
            e.getKey().setBody(candidate.variabilize(e.getValue()));
            //System.out.println(e.getKey().getBody());
        }
        return (boolean) ans.eval(command.formula);
    }

    public Optional<Candidate> repair(){

        while(mutationStepper.next()){
            Candidate candidate = mutationStepper.getCurrent();

            for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
                e.getKey().setBody(candidate.apply(e.getValue()));
            }

            A4Solution ans =
                    TranslateAlloyToKodkod.execute_command(rep, module.getAllReachableSigs(), command, opts);

            if(!ans.satisfiable()){
                //System.out.println("---------------");
                //System.out.println(candidate);
                //System.out.println(candidate.variabilizationID);
                //System.out.println("Found!");
                solution = Optional.of(candidate);
                return Optional.of(candidate);
            }

            boolean prune = canPruneWithVariabilization(candidate, ans);
            if(prune){
                mutationStepper.addVariabilization(candidate);
            }

            //System.out.println("---------------");
            //System.out.println(candidate);
            //System.out.println(candidate.variabilizationID);
            //System.out.println(prune);
            //for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
            //    System.out.println(e.getKey().getBody());
            //}

        }

        return Optional.empty();
    }

    public long getGeneratedTotal(){
        return mutationStepper.candidates.size();
    }

    public long getPrunnedTotal(){
        return mutationStepper.candidates.stream().filter(c -> c.prunned.isPresent()).count();
    }

    public long getPrunnedBy(PruneReason pruneReason){
        return mutationStepper.candidates.stream()
                .filter(c -> c.prunned.isPresent() && c.prunned.get().equals(pruneReason))
                .count();
    }

    public String generatedJSON(){
        return mutationStepper.candidates.get(0).toJSON();
    }
}
