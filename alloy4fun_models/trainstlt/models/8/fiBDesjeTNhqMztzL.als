open main
pred idfiBDesjeTNhqMztzL_prop9 {
	
		always ( all t:Train |eventually (before (no prox.t) and after (t.pos in Entry) ))
}
pred __repair { idfiBDesjeTNhqMztzL_prop9 }
check __repair { idfiBDesjeTNhqMztzL_prop9 <=> prop9o }