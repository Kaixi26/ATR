open main
pred idRSBCZhvpSphkte2tp_prop4 {
  	some f: File | f not in Protected implies f in Trash

}
pred __repair { idRSBCZhvpSphkte2tp_prop4 }
check __repair { idRSBCZhvpSphkte2tp_prop4 <=> prop4o }