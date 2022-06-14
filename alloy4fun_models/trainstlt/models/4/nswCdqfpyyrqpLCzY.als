open main
pred idnswCdqfpyyrqpLCzY_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or Exit in t.pos.next => t.pos' in Exit
}
pred __repair { idnswCdqfpyyrqpLCzY_prop5 }
check __repair { idnswCdqfpyyrqpLCzY_prop5 <=> prop5o }