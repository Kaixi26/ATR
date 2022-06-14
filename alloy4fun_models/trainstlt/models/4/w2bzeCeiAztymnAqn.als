open main
pred idw2bzeCeiAztymnAqn_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or t.pos in Exit
}
pred __repair { idw2bzeCeiAztymnAqn_prop5 }
check __repair { idw2bzeCeiAztymnAqn_prop5 <=> prop5o }