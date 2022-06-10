open main
pred idJyXHnCMr6ZrupzsTv_prop17 {
  all f: File |always f in Trash implies always f' not in File and f' not in Trash and f' not in Protected

}
pred __repair { idJyXHnCMr6ZrupzsTv_prop17 }
check __repair { idJyXHnCMr6ZrupzsTv_prop17 <=> prop17o }