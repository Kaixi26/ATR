open main
pred idb39ujwSWP87vaDiSw_prop12 {
	always all f:File | eventually f in Trash 
}
pred __repair { idb39ujwSWP87vaDiSw_prop12 }
check __repair { idb39ujwSWP87vaDiSw_prop12 <=> prop12o }