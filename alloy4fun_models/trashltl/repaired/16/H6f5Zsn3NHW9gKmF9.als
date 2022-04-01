open main
pred idH6f5Zsn3NHW9gKmF9_prop17 {
  all f: File |always f in Trash implies always f' not in File and f' not in Trash

}
pred __repair { idH6f5Zsn3NHW9gKmF9_prop17 }
check __repair { idH6f5Zsn3NHW9gKmF9_prop17 <=> prop17o }