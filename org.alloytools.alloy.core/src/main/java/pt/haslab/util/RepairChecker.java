package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Util;
import edu.mit.csail.sdg.alloy4.Version;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.parser.CompUtil;
import edu.mit.csail.sdg.translator.A4Options;
import pt.haslab.mutation.Candidate;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static edu.mit.csail.sdg.alloy4.A4Preferences.ImplicitThis;

public class RepairChecker {

    public static Repairer attemptRepair(String content, int maxDepth) {
        A4Options opt = new A4Options();
        Module world = CompUtil.parseEverything_fromString(A4Reporter.NOP, content);

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
        rep.repair();

        return rep;
    }
    public static Repairer attemptRepair(String content) {
        return attemptRepair(content, 3);
    }
}