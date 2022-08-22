package pt.haslab.testing;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.parser.CompUtil;

public class Models {

    public static Module trash(){
        String model = "var sig File {\n" +
                "\tvar link : lone File\n" +
                "}\n" +
                "var sig Trash in File {}\n" +
                "var sig Protected in File {}\n" +
                "\n" +
                "pred prop1 {\n" +
                "all t : Trash | t in Trash\n" +
                "no Trash\n" +
                "always no Protected\n" + // remove always & no -> some
                "}\n" +
                "\n" +
                "pred prop2 { no Trash and some Protected }\n" +
                "assert yep { prop1 <=> prop2 }\n" +
                "check yep";
        A4Reporter rep = new A4Reporter();
        return CompUtil.parseEverything_fromString(rep, model);
    }

    public static void main(String[] args) {

    }
}
