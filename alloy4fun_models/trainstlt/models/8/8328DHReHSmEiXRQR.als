open main
pred id8328DHReHSmEiXRQR_prop9 {
	
		always ( all t:Train | eventually (t.pos in Entry))
}
pred __repair { id8328DHReHSmEiXRQR_prop9 }
check __repair { id8328DHReHSmEiXRQR_prop9 <=> prop9o }