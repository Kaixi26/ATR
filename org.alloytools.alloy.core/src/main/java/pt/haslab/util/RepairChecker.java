package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.ErrorSyntax;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.ast.Sig;
import edu.mit.csail.sdg.parser.CompUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class RepairChecker {

    public static Repairer attemptRepair(String filename, int maxDepth, long timeout) throws IOException {
        return attemptRepair(filename, maxDepth, timeout, false, true);
    }

    public static Repairer attemptRepair(String filename, int maxDepth, long timeout, boolean variabilizationEnabled, boolean cexprunningEnabled) throws ErrorSyntax {
        Module world = CompUtil.parseEverything_fromFile(A4Reporter.NOP, null, filename);

        Optional<Command> cmd = world.getAllCommands().stream()
                .filter(c -> (c.label.equals("this/__repair") || c.label.equals("__repair")) && c.check)
                .findAny();

        List<Func> funcs = new ArrayList<>();
        for (Func func : world.getAllFunc()) {
            if (func.label.equals("this/__repair") || func.label.equals("__repair")) {
                funcs.addAll(ReferencedFunctions.find(func));
                break;
            }
        }

        Repairer rep = Repairer.make(world, cmd.get(), funcs, maxDepth);
        rep.variabilizationEnabled = variabilizationEnabled;
        rep.cexprunningEnabled = cexprunningEnabled;
        rep.repair(timeout);

        return rep;
    }

    public static Repairer attemptRepair(String content, long timeout) throws IOException {
        return attemptRepair(content, 3, timeout);
    }
}