open main
pred idyDNBJPGNvHZfG3wSp_prop9 {
	
	all t:Train | some t.pos and eventually t.pos in Entry
}
pred __repair { idyDNBJPGNvHZfG3wSp_prop9 }
check __repair { idyDNBJPGNvHZfG3wSp_prop9 <=> prop9o }