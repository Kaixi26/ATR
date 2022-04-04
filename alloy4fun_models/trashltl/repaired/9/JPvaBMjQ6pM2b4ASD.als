open main
pred idJPvaBMjQ6pM2b4ASD_prop10 {
always all f : File | f in Protected implies (f in Protected' and f not in Trash)
}
pred __repair { idJPvaBMjQ6pM2b4ASD_prop10 }
check __repair { idJPvaBMjQ6pM2b4ASD_prop10 <=> prop10o }