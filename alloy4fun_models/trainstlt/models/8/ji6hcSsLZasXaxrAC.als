open main
pred idji6hcSsLZasXaxrAC_prop9 {
	
	all t:Train | some tk:Entry | t->tk not in pos implies eventually (t->tk in pos and before no t.pos)
}
pred __repair { idji6hcSsLZasXaxrAC_prop9 }
check __repair { idji6hcSsLZasXaxrAC_prop9 <=> prop9o }