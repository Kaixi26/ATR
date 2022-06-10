open main
pred id2EhZQ4pCgEYoZoQA3_prop17 {
  all f: File |eventually (before f in Trash implies File' = File - f)

}
pred __repair { id2EhZQ4pCgEYoZoQA3_prop17 }
check __repair { id2EhZQ4pCgEYoZoQA3_prop17 <=> prop17o }