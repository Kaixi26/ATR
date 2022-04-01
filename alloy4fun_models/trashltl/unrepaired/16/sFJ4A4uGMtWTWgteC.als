open main
pred idsFJ4A4uGMtWTWgteC_prop17 {
  all f: File |always (eventually f in Trash ) implies always f' not in File and f' not in Trash and f' not in Protected

}
pred __repair { idsFJ4A4uGMtWTWgteC_prop17 }
check __repair { idsFJ4A4uGMtWTWgteC_prop17 <=> prop17o }