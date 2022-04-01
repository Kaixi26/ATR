open main
pred idvbKNCFFWy9EtCXRNh_prop12 {
  eventually some f:File | f in Trash implies always f in Trash 

}
pred __repair { idvbKNCFFWy9EtCXRNh_prop12 }
check __repair { idvbKNCFFWy9EtCXRNh_prop12 <=> prop12o }