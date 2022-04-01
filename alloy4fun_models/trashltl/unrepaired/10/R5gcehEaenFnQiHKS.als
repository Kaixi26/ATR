open main
pred idR5gcehEaenFnQiHKS_prop11 {
	always all f:File | f in File-Protected implies f'=Protected
  

}
pred __repair { idR5gcehEaenFnQiHKS_prop11 }
check __repair { idR5gcehEaenFnQiHKS_prop11 <=> prop11o }