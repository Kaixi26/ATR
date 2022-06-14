open main
pred iduzups8rY62xC5nAiR_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or t.pos in Exit => t.pos' in Exit
}
pred __repair { iduzups8rY62xC5nAiR_prop5 }
check __repair { iduzups8rY62xC5nAiR_prop5 <=> prop5o }