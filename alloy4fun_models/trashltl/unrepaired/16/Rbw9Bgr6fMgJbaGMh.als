open main
pred idRbw9Bgr6fMgJbaGMh_prop17 {
  all f: File |eventually (once f in Trash implies always f not in File)

}
pred __repair { idRbw9Bgr6fMgJbaGMh_prop17 }
check __repair { idRbw9Bgr6fMgJbaGMh_prop17 <=> prop17o }