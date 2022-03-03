package pt.haslab.mutation;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class MSet<T> {

    Map<T, Integer> mset = new HashMap<>();

    public void union(Set<T> elems){
        elems.forEach(elem -> {
            mset.compute(elem, (ignored, x) -> (x == null) ? 1 : x + 1);
        });
    }

    public void difference(Set<T> elems){
        elems.forEach(elem -> {
            mset.compute(elem, (ignored, x) -> (x == null || x <= 1) ? null : x - 1);
        });
    }

    public boolean contains(T elem){
        return mset.getOrDefault(elem, null) != null;
    }

}
