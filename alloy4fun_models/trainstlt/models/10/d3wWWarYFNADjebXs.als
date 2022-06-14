open main
pred idd3wWWarYFNADjebXs_prop11 {
	
	
  always ( all t:Train| some t.pos and historically t.pos in Entry)
}
pred __repair { idd3wWWarYFNADjebXs_prop11 }
check __repair { idd3wWWarYFNADjebXs_prop11 <=> prop11o }