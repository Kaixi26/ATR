open main
pred idRRC5EvnTKvtiBSksF_prop8 {
	eventually (all f1,f2:File | f1->f2 in link implies f1 in Trash)
}
pred __repair { idRRC5EvnTKvtiBSksF_prop8 }
check __repair { idRRC5EvnTKvtiBSksF_prop8 <=> prop8o }