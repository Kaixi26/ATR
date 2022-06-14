open main
pred idG6dcqMMEc4x7CLsm7_prop5 {
	
	all t:Train | t.pos in Entry implies after t.pos in t.pos.prox
}
pred __repair { idG6dcqMMEc4x7CLsm7_prop5 }
check __repair { idG6dcqMMEc4x7CLsm7_prop5 <=> prop5o }