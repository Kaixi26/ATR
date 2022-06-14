open main
pred idfNZ5bNJg67dLRkDj5_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox || t.pos' = Exit
}
pred __repair { idfNZ5bNJg67dLRkDj5_prop5 }
check __repair { idfNZ5bNJg67dLRkDj5_prop5 <=> prop5o }