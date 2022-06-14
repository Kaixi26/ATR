open main
pred iduuEq2nTywegCmdwNL_prop2 {
	
	always ( all s : Track.signal | eventually s=Green)
}
pred __repair { iduuEq2nTywegCmdwNL_prop2 }
check __repair { iduuEq2nTywegCmdwNL_prop2 <=> prop2o }