open main
pred idCCTGpLnbPjPwXrkvR_prop9 {
	
	all t:Train | some tk:Entry | (t.pos not in Entry) implies eventually (t->tk in pos and before no t.pos)
}
pred __repair { idCCTGpLnbPjPwXrkvR_prop9 }
check __repair { idCCTGpLnbPjPwXrkvR_prop9 <=> prop9o }