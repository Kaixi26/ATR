package edu.mit.csail.sdg.alloy4whole;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.Func;
import pt.haslab.mutation.Candidate;
import pt.haslab.mutation.PruneReason;
import pt.haslab.mutation.mutator.Mutator;
import pt.haslab.util.ExprToString;
import pt.haslab.util.JSON;
import pt.haslab.util.RepairChecker;
import pt.haslab.util.Repairer;

import java.io.IOException;
import java.util.*;
import java.util.stream.Stream;


public final class RepairCLI {
    static int depth = 3;
    static long timeout = 60;
    static String filepath = null;
    static String output_filepath = null;
    static boolean debug = false;
    static boolean enableVariabilization = false;
    static boolean enableStats = false;

    private static void usage() {
        System.err.println("usage: repairer [OPTION]...");
        Stream.of("--depth [INT]", "--timeout [SECS]", "--file [FILE]", "--out [FILE] (Optional)", "--enable-variabilization", "--stats")
                .forEach(option -> System.err.println("\t" + option));
        System.exit(-1);
    }

    private static void usageError(String errorMessage) {
        System.err.println(errorMessage);
        usage();
    }


    private static void parseArgument(Queue<String> args) {
        String arg = args.remove();
        switch (arg) {
            case "--depth":
                try {
                    depth = Integer.parseInt(args.remove());
                } catch (NumberFormatException ignored) {
                    usageError("Invalid natural given for depth.");
                }
                break;
            case "--timeout":
                try {
                    timeout = Integer.parseInt(args.remove());
                } catch (NumberFormatException ignored) {
                    usageError("Invalid integer given for timeout.");
                }
                break;
            case "--file":
                filepath = args.remove();
                break;
            case "--out":
                output_filepath = args.remove();
                break;
            case "--debug":
                debug = true;
                break;
            case "--enable-variabilization":
                enableVariabilization = true;
                break;
            case "--stats":
                enableStats = true;
                break;
            default:
                usageError("Unknown option '" + arg + "'.");
        }
    }

    private static void parseArguments(String[] args) {
        Queue<String> argQueue = new ArrayDeque<>(Arrays.asList(args));
        while (argQueue.size() > 0) {
            parseArgument(argQueue);
        }
        if (depth < 0) {
            usageError("Given depth is below 0.");
        } else if (timeout < 0) {
            usageError("Given timeout is below 0.");
        } else if (filepath == null) {
            usageError("filepath is required");
        }

    }

    private static String stats(Repairer repairer) {
        Map<String, String> json = new HashMap<>();
        json.put("#cex", "" + repairer.counterexamples.size());
        json.put("#attempted_candidates", "" + repairer.num_attempted_candidates);
        json.put("#prunned_cex", "" + repairer.getPrunnedBy(PruneReason.PREVIOUS_CEX));
        json.put("#prunned_ext", "" + repairer.getPrunnedBy(PruneReason.EXTENSIONALITY));
        json.put("#generated", "" + repairer.mutationStepper.candidates.size());
        return JSON.toJSON(json);
    }

    private static String solution(Repairer repairer) {
        Map<String, String> json = new HashMap<>();
        for (Func func : repairer.funcOriginalBody.keySet()) {
            json.put(func.label.replace("this/", ""), "\"" + ExprToString.exprToString(func.getBody()) + "\"");
        }
        return JSON.toJSON(json);
    }

    public static void main(String[] args) throws Err, IOException {
        parseArguments(args);

        Repairer repairer = RepairChecker.attemptRepair(filepath, depth, 1000 * timeout, enableVariabilization);

        Map<String, String> json = new HashMap<>();
        json.put("elapsed", "" + repairer.getElapsedMillis());
        json.put("depth", "" + depth);
        json.put("timeout", "" + timeout);
        json.put("file", "\"" + filepath + "\"");
        json.put("solved", "" + repairer.solution.isPresent());
        json.put("timed_out", "" + repairer.getRepairStatus().equals(pt.haslab.util.Repairer.RepairStatus.TIMEOUT));
        if (enableStats) {
            json.put("stats", stats(repairer));
        }
        if (repairer.solution.isPresent()) {
            json.put("solution", solution(repairer));
        }
        System.out.println(JSON.toJSON(json));

        if (debug) {
            for (Mutator baseMutator : repairer.mutationStepper.baseMutators) {
                System.out.println(baseMutator);
                for (Mutator mutator : baseMutator.getGeneratedMutators()) {
                    System.out.println("\t" + mutator);
                }
            }
        }

        switch (repairer.getRepairStatus()) {
            case ALREADY_CORRECT:
            case SUCCESS:
                System.exit(0);
            case TIMEOUT:
                System.exit(1);
            case FAIL:
                System.exit(2);
            default:
                System.exit(-1);
        }
    }
}
