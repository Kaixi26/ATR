open main
pred idiqHMwdeWAsiNN4G8R_prop17 {
  all f: File | always f in Trash releases f' not in File

}
pred __repair { idiqHMwdeWAsiNN4G8R_prop17 }
check __repair { idiqHMwdeWAsiNN4G8R_prop17 <=> prop17o }