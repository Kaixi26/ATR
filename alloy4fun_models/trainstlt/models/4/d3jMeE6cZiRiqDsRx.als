open main
pred idd3jMeE6cZiRiqDsRx_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox || t.pos' in Exit
}
pred __repair { idd3jMeE6cZiRiqDsRx_prop5 }
check __repair { idd3jMeE6cZiRiqDsRx_prop5 <=> prop5o }