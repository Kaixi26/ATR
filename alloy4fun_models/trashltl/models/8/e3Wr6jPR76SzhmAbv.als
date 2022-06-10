open main
pred ide3Wr6jPR76SzhmAbv_prop9 {
  all f: File | always after f in Protected implies always f not in Trash
}
pred __repair { ide3Wr6jPR76SzhmAbv_prop9 }
check __repair { ide3Wr6jPR76SzhmAbv_prop9 <=> prop9o }