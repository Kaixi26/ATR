open main
pred idAKA69ik42JwZHnSrH_prop17 {
  all f: File |always  (once f in Trash releases f' not in File)

}
pred __repair { idAKA69ik42JwZHnSrH_prop17 }
check __repair { idAKA69ik42JwZHnSrH_prop17 <=> prop17o }