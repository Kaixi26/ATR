package pt.haslab.util;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.ExprBinary;
import edu.mit.csail.sdg.ast.ExprCall;
import edu.mit.csail.sdg.ast.Func;
import edu.mit.csail.sdg.ast.VisitQuery;

import java.util.ArrayList;
import java.util.Collection;

public class ReferencedFunctions {
    public static Collection<Func> find(Func func){
        Collection<Func> ret = new ArrayList();

        VisitQuery<Void> visitQuery = new VisitQuery<Void>() {
            public Void visit(ExprCall x){
                if(ret.stream().allMatch(fun -> System.identityHashCode(fun) != System.identityHashCode(x.fun))){
                    ret.add(x.fun);
                }
                return null;
            }
        };

        visitQuery.visitThis(func.getBody());

        return ret;
    }
}
