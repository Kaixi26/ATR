package edu.mit.csail.sdg.alloy4whole;

import pt.haslab.mutation.PruneReason;
import pt.haslab.util.RepairChecker;
import pt.haslab.util.Repairer;

import java.io.File;
import java.io.IOException;
import java.time.Duration;
import java.time.Instant;

public class TestFiles {

    private static void testFile(File file) throws IOException {
        System.gc();
        if(file.getName().equals("util") || file.getName().equals("main.als")){
            return;
        }

        if (file.isDirectory()) {
            System.out.println("Testing directory '" + file.getName() + "'");
            int i = 0;
            File[] files = file.listFiles();
            assert files != null;
            for (File f : files) {
                System.out.print("[" + (++i) + "/" + files.length + "]");
                testFile(f);
            }
        } else {
            System.out.println("[TESTING] '" + file.getPath() + "'");
            System.out.flush();
            //byte[] encoded = Files.readAllBytes(Paths.get(file.getPath()));
            //String content = new String(encoded);

            Repairer repairer = RepairChecker.attemptRepair(file.getPath(), (1000*60));
            switch (repairer.getRepairStatus()){
                case SUCCESS:
                    System.out.println("[FIXED] '" + file.getPath() + "'");
                    break;
                case TIMEOUT:
                    System.out.println("[TIMEOUT] '" + file.getPath() + "'");
                    break;
                case FAIL:
                    System.out.println("[FAILED] '" + file.getPath() + "'");
                    System.exit(1);
                    break;
                case ALREADY_CORRECT:
                    System.out.println("[CORRECT] '" + file.getPath() + "'");
                    break;
                default:
                    throw new RuntimeException("Unreachable!");
            }
            //long prunes = repairer.mutationStepper.candidates.stream()
            //        .filter(c -> c.prunned.isPresent() && c.prunned.get() == PruneReason.VARIABILIZATION)
            //        .count();
            //long prunes2 = repairer.mutationStepper.candidates.stream()
            //        .filter(c -> c.prunned.isPresent() && c.prunned.get() == PruneReason.PREVIOUS_CEX)
            //        .count();
            //System.out.println("[PRUNNED] '" + prunes + "'");
            //System.out.println("[PRUNNED CEX] '" + prunes2 + "'");
            //System.gc();
        }
    }

    private static void verifyRepaired() throws IOException {
        for(int i=0; i < 20; i++){
            testFile(new File("alloy4fun_models/trashltl/repaired/" + i));
        }
    }

    public static void main(String[] args) throws IOException {
        Instant start = Instant.now();

        //File f = new File("tests/repaired");//"trashltl_1_0.als");
        //File f = new File("alloy4fun_models/trashltl/repaired");///hctjS83QNJoDevzGY.als");
        //File f = new File("alloy4fun_models/trashltl/repaired/");///hctjS83QNJoDevzGY.als");
        //File f = new File("alloy4fun_models/trashltl/repaired/11/7MEWsRCR2QHykYucm.als");
        //File f = new File("alloy4fun_models/trashltl/unrepaired/18/2ehqLwYdJhd3giJWk.als");
        //File f = new File("alloy4fun_models/trashltl/repaired/5/rqi6Lbbd8j9iiXgwq.als");
        //File f = new File("beafix_benchmarks/generated");
        //File f = new File("alloy4fun_models/trashltl/repaired/3/KHGKqZrzfgouQaBFT.als");
        //testFile(f);
        verifyRepaired();

        System.out.println("elapsed: " + Duration.between(start, Instant.now()).toMillis());
    }
}
