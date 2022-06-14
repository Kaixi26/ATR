open main
pred idAJWzwCzFiWsqu333o_prop9 {
	
		always ( all t:Train |(no prox.t) and eventually (t.pos in Entry) )
}
pred __repair { idAJWzwCzFiWsqu333o_prop9 }
check __repair { idAJWzwCzFiWsqu333o_prop9 <=> prop9o }