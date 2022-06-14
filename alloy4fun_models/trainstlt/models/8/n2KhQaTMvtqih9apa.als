open main
pred idn2KhQaTMvtqih9apa_prop9 {
	
	all t:Train | some tk:Entry | (t.pos not in Entry) implies eventually (t->tk in pos and before no t.pos)
}
pred __repair { idn2KhQaTMvtqih9apa_prop9 }
check __repair { idn2KhQaTMvtqih9apa_prop9 <=> prop9o }