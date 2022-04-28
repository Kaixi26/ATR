package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Version;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.translator.A4Options;
import edu.mit.csail.sdg.translator.A4Solution;
import edu.mit.csail.sdg.translator.TranslateAlloyToKodkod;
import org.eclipse.jdt.annotation.Nullable;
import pt.haslab.mutation.Candidate;
import pt.haslab.mutation.Location;
import pt.haslab.mutation.MutationStepper;
import pt.haslab.mutation.PruneReason;

import java.time.Duration;
import java.time.Instant;
import java.util.*;

import static edu.mit.csail.sdg.alloy4.A4Preferences.*;

public class Repairer {
    static final A4Reporter rep = A4Reporter.NOP;
    static final A4Options opts = new A4Options();
    final Module module;
    Command command;
    ArrayList<Func> repairTargets;
    public MutationStepper mutationStepper;

    Map<Expr, Func> locationCorrespondentFunc = new HashMap<>();
    Map<Func, Expr> funcOriginalBody = new HashMap<>();
    List<Location> repairTargetLocations = new ArrayList<>();

    public Optional<Candidate> solution = Optional.empty();

    ArrayList<CounterExample> counterexamples = new ArrayList<>();

    static {
        Repairer.opts.recordKodkod = RecordKodkod.get();
        Repairer.opts.noOverflow = NoOverflow.get();
        Repairer.opts.unrolls = Version.experimental ? Unrolls.get() : (-1);
        Repairer.opts.skolemDepth = SkolemDepth.get();
        Repairer.opts.coreMinimization = CoreMinimization.get();
        Repairer.opts.inferPartialInstance = InferPartialInstance.get();
        Repairer.opts.coreGranularity = CoreGranularity.get();
        Repairer.opts.decompose_mode = DecomposePref.get().ordinal();
    }

    private static class CounterExample {
        public final A4Solution cex;
        public int ocurrences;

        CounterExample(A4Solution cex, int ocurrences) {
            this.cex = cex;
            this.ocurrences = ocurrences;
        }

        boolean eval(Expr formula, int state) {
            return (boolean) cex.eval(formula, state);
        }

        boolean evalAllStates(Expr formula) {
            for (int i = 0; i < cex.getTraceLength(); i++) {
                if (this.eval(formula, i)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public String toString() {
            return ocurrences + "";
        }
    }

    private RepairStatus repairStatus = RepairStatus.NOT_STARTED;

    public enum RepairStatus {
        NOT_STARTED,
        FAIL,
        TIMEOUT,
        SUCCESS,
        ALREADY_CORRECT,
    }

    private Repairer(Module module, Command command, ArrayList<Func> repairTargets) {
        this.module = module;
        this.command = command;
        this.repairTargets = repairTargets;
    }

    public static Repairer make(Module module, Command command, Collection<Func> repairTargets, int maxDepth) {
        Repairer ret = new Repairer(module, command, new ArrayList<>(repairTargets));

        for (Func repairTarget : repairTargets) {
            ret.funcOriginalBody.put(repairTarget, repairTarget.getBody());

            Collection<Location> repairTargetLocations = LocationAggregator.BreadthBottomUp(repairTarget.getBody());
            ret.repairTargetLocations.addAll(repairTargetLocations);

            for (Location repairTargetLocation : repairTargetLocations) {
                ret.locationCorrespondentFunc.put(repairTargetLocation.expr, repairTarget);
            }
        }

        ret.mutationStepper = MutationStepper.make(ret.repairTargetLocations, module.getAllReachableUserDefinedSigs(), maxDepth);

        return ret;
    }

    public boolean canPruneWithVariabilization(Candidate candidate, A4Solution cex) {
        List<Expr> suspectExpressions = new ArrayList<>(funcOriginalBody.values());

        List<Map<Expr, Expr>> variabilizations = candidate.variabilize(suspectExpressions);
        if (variabilizations == null) {
            return false;
        }

        boolean[] results = new boolean[cex.getTraceLength()];
        Arrays.fill(results, true);

        for (Map<Expr, Expr> variabilization : variabilizations) {
            for (Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()) {
                e.getKey().setBody(variabilization.get(e.getValue()));
            }
            for (int i = 0; i < cex.getTraceLength(); i++) {
                results[i] = results[i] && (boolean) cex.eval(command.formula);
            }
        }

        for (boolean result : results) {
            if (result) {
                return false;
            }
        }

        return true;
    }

    @Nullable
    public CounterExample attemptPruneWithPreviousCounterexample() {
        for (int i = 0; i < counterexamples.size(); i++) {
            CounterExample counterExample = counterexamples.get(i);
            if (counterExample.evalAllStates(command.formula)) {
                counterExample.ocurrences++;
                if (i > 0 && counterExample.ocurrences > counterexamples.get(i - 1).ocurrences) {
                    Collections.swap(counterexamples, i, i - 1);
                }
                return counterExample;
            }
        }
        return null;
    }


    public Optional<Candidate> repair() {
        return repair(0);
    }

    public Optional<Candidate> repair(long ms_timeout) {
        if(!TranslateAlloyToKodkod.execute_command(rep, module.getAllReachableSigs(), command, opts).satisfiable()){
            this.solution = Optional.of(Candidate.empty());
            this.repairStatus = RepairStatus.ALREADY_CORRECT;
            return this.solution;
        }

        Instant time_begin = Instant.now();

        while (mutationStepper.next()) {
            if (ms_timeout != 0 && Duration.between(time_begin, Instant.now()).toMillis() > ms_timeout) {
                this.repairStatus = RepairStatus.TIMEOUT;
                return Optional.empty();
            }
            Candidate candidate = mutationStepper.getCurrent();

            for (Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()) {
                e.getKey().setBody(candidate.apply(e.getValue()));
            }

            {
                CounterExample pruneCounterexample = attemptPruneWithPreviousCounterexample();
                if (pruneCounterexample != null) {
                    candidate.prunned = Optional.of(PruneReason.PREVIOUS_CEX);
                    if (canPruneWithVariabilization(candidate, pruneCounterexample.cex)) {
                        mutationStepper.pruneByVariabilization(candidate);
                    }
                    continue;
                }
            }

            A4Solution ans =
                    TranslateAlloyToKodkod.execute_command(rep, module.getAllReachableSigs(), command, opts);

            if (!ans.satisfiable()) {
                //System.out.println("---------------");
                //System.out.println(candidate);
                //System.out.println(candidate.variabilizationID);
                //System.out.println("Found!");
                //for (Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()) {
                //    e.getKey().setBody(candidate.apply(e.getValue()));
                //    System.out.println(candidate.variabilize(e.getValue()));
                //}
                solution = Optional.of(candidate);
                repairStatus = RepairStatus.SUCCESS;
                return Optional.of(candidate);
            }

            counterexamples.add(new CounterExample(ans, 1));
            if (canPruneWithVariabilization(candidate, ans)) {
                mutationStepper.pruneByVariabilization(candidate);
            }


            //System.out.println(candidate);
            //System.out.println("---------------");
            //System.out.println(candidate.variabilizationID);
            //System.out.println(prune);
            //for(Map.Entry<Func, Expr> e : funcOriginalBody.entrySet()){
            //    System.out.println(e.getKey().getBody());
            //}
            //System.out.println(ans);
            //System.exit(69);

        }

        repairStatus = RepairStatus.FAIL;
        return Optional.empty();
    }

    public long getGeneratedTotal() {
        return mutationStepper.candidates.size();
    }

    public long getPrunnedTotal() {
        return mutationStepper.candidates.stream().filter(c -> c.prunned.isPresent()).count();
    }

    public long getPrunnedBy(PruneReason pruneReason) {
        return mutationStepper.candidates.stream()
                .filter(c -> c.prunned.isPresent() && c.prunned.get().equals(pruneReason))
                .count();
    }

    public String generatedJSON() {
        return mutationStepper.candidates.get(0).toJSON();
    }

    public RepairStatus getRepairStatus() {
        return repairStatus;
    }
}
