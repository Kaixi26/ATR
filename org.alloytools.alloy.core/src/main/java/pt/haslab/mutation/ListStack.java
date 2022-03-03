package pt.haslab.mutation;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ListStack<T> {

    private final List<T> stack = new ArrayList<>();
    private final List<T> buffered = new ArrayList<>();
    private final List<Integer> depth = new ArrayList<>();

    public ListStack(){}

    public void addBuffered(T elem){
        buffered.add(elem);
    }

    public void addBuffered(Collection<T> elems){
        buffered.addAll(elems);
    }

    public void pushBuffered(){
        stack.addAll(buffered);
        if(depth.size() > 0){
            depth.add(buffered.size() + depth.get(depth.size()-1));
        } else {
            depth.add(buffered.size());
        }
        buffered.clear();
    }

    public void pop(){
        for(int i = 0; i < depth.get(depth.size()-1); i++){
            stack.remove(stack.size()-1);
        }
        depth.remove(stack.size()-1);
    }

    public T get(int i){
        return stack.get(i);
    }

    public int size(){
        return stack.size();
    }

    public int depth(){
        return depth.size();
    }

    @Override
    public String toString() {
        return "ListStack{" +
                "stack=" + stack +
                ", buffered=" + buffered +
                ", depth=" + depth +
                '}';
    }
}
