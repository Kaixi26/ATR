package pt.haslab.testing;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.translator.A4Options;
import pt.haslab.ast.debug.Debugger;
import pt.haslab.mutation.PruneReason;
import pt.haslab.util.Repairer;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.util.Collections;

public class Debug {
    private static A4Options opts = new A4Options();
    private static A4Reporter rep = new A4Reporter();

    public static void main(String[] args) throws Exception {
        Module model = Models.trash();
        Func func = model.getAllFunc().get(0);
        Expr original = func.getBody();
        String gviz = Debugger.toGraphviz(original);
        System.out.println(gviz);
    }

    public static void main_(String[] args) throws IOException {
        Module model = Models.trash();

        Instant start = Instant.now();
        Repairer rep = Repairer.make(model, model.getAllCommands().get(0), Collections.singleton(model.getAllFunc().get(0)), 2);
        rep.repair();

        //System.out.println(rep.candidates.toString());

        System.out.println("Total generated " + rep.getGeneratedTotal());
        System.out.println("Prunned " + rep.getPrunnedTotal());
        System.out.println("Prunned by extensionality " + rep.getPrunnedBy(PruneReason.EXTENSIONALITY));
        System.out.println("Prunned by variabilization " + rep.getPrunnedBy(PruneReason.VARIABILIZATION));
        System.out.println("Tested " + (rep.getGeneratedTotal() - rep.getPrunnedTotal()));
        System.out.println("elapsed: " + Duration.between(start, Instant.now()).toMillis());
        System.out.println(rep.generatedJSON());

        BufferedWriter writer = new BufferedWriter(new FileWriter("/tmp/repair.json"));
        writer.append(rep.generatedJSON());
        writer.close();

    }

    /*
    public static void main_(String[] args) throws Exception {
        Module model = Models.trash();
        //System.out.println(model.toString());
        //System.out.println(model.getAllFunc());

        Func func = model.getAllFunc().get(0);
        Expr original = func.getBody();
        System.out.println("Original: " + func.getBody());

        ASTMutator mut = new ASTMutator(original, 2);
        //System.out.println(mut);
        Instant start = Instant.now();
        do {
            System.out.println("--------------");
            List<Mutator> mutatorList = mut.getCurrent();
            MutatorApplier mutApp = MutatorApplier.make(mutatorList);
            Expr mutant = mutApp.apply(original);

            func.setBody(mutant);
            System.out.println(func.getBody());

            Expr varia = Variabilizer.variabilize(original, mutatorList.get(mutatorList.size()-1).original);
            System.out.println(varia);
            //System.out.println(varia.type());
            //func.setBody(varia);

            //System.out.println(Debugger.toGraphviz(varia));
            //System.exit(0);
            A4Solution ans =
                    TranslateAlloyToKodkod.execute_command(rep, model.getAllReachableSigs(), model.getAllCommands().get(0), opts);
            System.out.println(ans.eval(model.getAllCommands().get(0).formula));
            //if(!ans.satisfiable()){
            //    System.out.println("Found!");
            //    break;
            //}
            //System.out.println(ans.satisfiable());
            System.exit(0);
        } while(mut.next());
        System.out.println("Total generated " + mut.numGeneratedMutationCombinations);
        System.out.println("Prunned " + mut.numPrunnedMutationCombinations);
        System.out.println("elapsed: " + Duration.between(start, Instant.now()).toMillis());
            //System.out.println(mut.getCurrent().get());
            //MutatorApplier mutApp = MutatorApplier.make(Collections.singleton(mut.current()));
            //Expr mutant = mutApp.apply(original);

            //func.setBody(mutant);
            //System.out.println(func.getBody());

            //A4Solution ans =
            //        TranslateAlloyToKodkod.execute_command(rep, model.getAllReachableSigs(), model.getAllCommands().get(0), opts);
            //System.out.println(ans.satisfiable());
            //mut.next();
    }
     */
}
