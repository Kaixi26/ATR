open main
pred idEEaKo6QMrMj5PkgMC_prop6 {
	all f : File | always (f in Trash implies always f in Trash) 
}
pred __repair { idEEaKo6QMrMj5PkgMC_prop6 }
check __repair { idEEaKo6QMrMj5PkgMC_prop6 <=> prop6o }