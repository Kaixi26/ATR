open main
pred idiCvEeXpDptepEpPwi_prop7 {
	
  	all t : Train | (eventually always no t.pos)
}
pred __repair { idiCvEeXpDptepEpPwi_prop7 }
check __repair { idiCvEeXpDptepEpPwi_prop7 <=> prop7o }