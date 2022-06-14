open main
pred idwPLvspjZWSmvxg8zo_prop9 {
	
		always ( all t:Train |before (no prox.t) and eventually (t.pos in Entry) )
}
pred __repair { idwPLvspjZWSmvxg8zo_prop9 }
check __repair { idwPLvspjZWSmvxg8zo_prop9 <=> prop9o }