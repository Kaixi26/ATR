open main
pred idW2Lb3GbSmg5fPAjM5_prop15 {
	
	always eventually (some Train implies (Train.pos)' != Train.pos)
}
pred __repair { idW2Lb3GbSmg5fPAjM5_prop15 }
check __repair { idW2Lb3GbSmg5fPAjM5_prop15 <=> prop15o }