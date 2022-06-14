open main
pred idPc5ox8ZgzfLqteivi_prop5 {
	
	all t:Train | t.pos' in t.pos.prox
}
pred __repair { idPc5ox8ZgzfLqteivi_prop5 }
check __repair { idPc5ox8ZgzfLqteivi_prop5 <=> prop5o }