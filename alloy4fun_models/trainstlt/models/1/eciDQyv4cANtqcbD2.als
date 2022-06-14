open main
pred ideciDQyv4cANtqcbD2_prop2 {
	
	always all s: Signal | eventually s in Green
}
pred __repair { ideciDQyv4cANtqcbD2_prop2 }
check __repair { ideciDQyv4cANtqcbD2_prop2 <=> prop2o }