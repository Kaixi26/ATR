open main
pred ideR6Yta2x4JXnw4aD7_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or t.pos in Exit
}
pred __repair { ideR6Yta2x4JXnw4aD7_prop5 }
check __repair { ideR6Yta2x4JXnw4aD7_prop5 <=> prop5o }