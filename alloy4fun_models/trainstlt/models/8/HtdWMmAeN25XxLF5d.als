open main
pred idHtdWMmAeN25XxLF5d_prop9 {
	
		always ( all t:Train |some t.pos and eventually (t.pos in Entry))
}
pred __repair { idHtdWMmAeN25XxLF5d_prop9 }
check __repair { idHtdWMmAeN25XxLF5d_prop9 <=> prop9o }