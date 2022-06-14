open main
pred idESJjwbCZavK3tGXAm_prop9 {
	
		always ( all t:Train | eventually (t.pos in Entry))
}
pred __repair { idESJjwbCZavK3tGXAm_prop9 }
check __repair { idESJjwbCZavK3tGXAm_prop9 <=> prop9o }