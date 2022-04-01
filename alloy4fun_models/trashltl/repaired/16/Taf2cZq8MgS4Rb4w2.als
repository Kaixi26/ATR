open main
pred idTaf2cZq8MgS4Rb4w2_prop17 {
  all f: File |eventually (f in Trash implies always f not in File)

}
pred __repair { idTaf2cZq8MgS4Rb4w2_prop17 }
check __repair { idTaf2cZq8MgS4Rb4w2_prop17 <=> prop17o }