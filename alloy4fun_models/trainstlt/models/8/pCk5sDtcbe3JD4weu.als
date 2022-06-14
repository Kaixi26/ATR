open main
pred idpCk5sDtcbe3JD4weu_prop9 {
	
	all t:Train | eventually (t.pos in Entry and before no t.pos)
}
pred __repair { idpCk5sDtcbe3JD4weu_prop9 }
check __repair { idpCk5sDtcbe3JD4weu_prop9 <=> prop9o }