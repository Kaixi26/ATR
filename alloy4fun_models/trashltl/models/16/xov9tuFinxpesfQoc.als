open main
pred idxov9tuFinxpesfQoc_prop17 {
  all f: File |once (always f in Trash implies File' = File - f)

}
pred __repair { idxov9tuFinxpesfQoc_prop17 }
check __repair { idxov9tuFinxpesfQoc_prop17 <=> prop17o }