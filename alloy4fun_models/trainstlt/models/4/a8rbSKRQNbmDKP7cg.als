open main
pred ida8rbSKRQNbmDKP7cg_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox
}
pred __repair { ida8rbSKRQNbmDKP7cg_prop5 }
check __repair { ida8rbSKRQNbmDKP7cg_prop5 <=> prop5o }