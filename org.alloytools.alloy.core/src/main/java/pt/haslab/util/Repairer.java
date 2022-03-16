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

    public List<Candidate> candidates = new ArrayList<>();

    private Repairer(Module module, Command command, ArrayList<Func> repairTargets) {
        this.module = module;
        this.command = command;
        this.repairTargets = repairTargets;
    }

    public static Repairer make(Module module, Command command, Collection<Func> repairTargets) {
        Repairer ret = new Repairer(module, command, new ArrayList<>(repairTargets));

        for (Func repairTarget : repairTargets) {
            ret.funcOriginalBody.put(repairTarget, repairTarget.getBody());

            Collection<Expr> repairTargetLocations = LocationAggregator.BreadthBottomUp(repairTarget.getBody());
            ret.repairTargetLocations.addAll(repairTargetLocations);

            for (Expr repairTargetLocation : repairTargetLocations) {
                ret.locationCorrespondentFunc.put(repairTargetLocation, repairTarget);
            }
        }

        ret.mutationStepper = MutationStepper.make(ret.repairTargetLocations, 3);

        return ret;
    }

    public Optional<Candidate> repair(){

        do {
            Candidate candidate = mutationStepper.getCurrent();
            candidates.add(candidate);

            for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
                e.getKey().setBody(candidate.apply(e.getValue()));

                //System.out.println(e.getKey().getBody());
                //System.out.println(candidate.variabilize(e.getValue()));
            }

            A4Solution ans =
                    TranslateAlloyToKodkod.execute_command(rep, module.getAllReachableSigs(), command, opts);

            System.out.println("-------------------------");
            System.out.println(candidate.toString());
            if(!ans.satisfiable()){
                System.out.println("Found!");
            } else {
                for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
                    e.getKey().setBody(candidate.variabilize(e.getValue()));
                }


                boolean evalResult = (boolean) ans.eval(command.formula);
                if(evalResult){
                    for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
                        System.out.println(e.getKey().getBody());
                    }
                    System.out.println(evalResult);
                }
            }

        } while(mutationStepper.next());

        return Optional.empty();
    }
}
