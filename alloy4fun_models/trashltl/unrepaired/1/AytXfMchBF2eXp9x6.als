open main
pred idAytXfMchBF2eXp9x6_prop2 {
  all f : File | after no File implies f in File 
}
pred __repair { idAytXfMchBF2eXp9x6_prop2 }
check __repair { idAytXfMchBF2eXp9x6_prop2 <=> prop2o }