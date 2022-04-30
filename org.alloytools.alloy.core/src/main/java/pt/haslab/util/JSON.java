package pt.haslab.util;

import java.util.List;
import java.util.Map;

public class JSON {

    public static String toJSON(List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("[ ");

        boolean fst = true;
        for (String elem : list) {
            if (!fst) {
                sb.append(", ");
            }
            fst = false;
            sb.append(elem);
        }

        sb.append(" ]");
        return sb.toString();
    }

    public static String toJSON(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        sb.append("{ ");

        boolean fst = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!fst) {
                sb.append(", ");
            }
            fst = false;
            sb.append("\"").append(entry.getKey()).append("\": ").append(entry.getValue());
        }

        sb.append(" }");
        return sb.toString();
    }
}
