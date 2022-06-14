open main
pred ide6tAJEZig5oczLSfA_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or t.pos' in Exit
}
pred __repair { ide6tAJEZig5oczLSfA_prop5 }
check __repair { ide6tAJEZig5oczLSfA_prop5 <=> prop5o }