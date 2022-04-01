open main
pred id7wPGJcy4faJmqDuGh_prop20 {
    always all f : Trash | f in Trash since f in Protected
}
pred __repair { id7wPGJcy4faJmqDuGh_prop20 }
check __repair { id7wPGJcy4faJmqDuGh_prop20 <=> prop20o }