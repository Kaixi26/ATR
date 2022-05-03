package pt.haslab.mutation;

public enum PruneReason {

    /* The candidates M1,M2 and M2,M1 are equal*/
    EXTENSIONALITY,
    VARIABILIZATION,
    PREVIOUS_CEX,
    TYPE_ERROR,
}
