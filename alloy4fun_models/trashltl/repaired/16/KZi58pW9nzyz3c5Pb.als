open main
pred idKZi58pW9nzyz3c5Pb_prop17 {
  all f: File |eventually (before f in Trash implies f not in File)

}
pred __repair { idKZi58pW9nzyz3c5Pb_prop17 }
check __repair { idKZi58pW9nzyz3c5Pb_prop17 <=> prop17o }