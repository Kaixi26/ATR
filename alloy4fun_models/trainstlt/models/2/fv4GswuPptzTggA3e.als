open main
pred idfv4GswuPptzTggA3e_prop3 {
	
	
  	always( all t:Train | some tk:Track | t->tk in pos implies after t->tk in pos)
}
pred __repair { idfv4GswuPptzTggA3e_prop3 }
check __repair { idfv4GswuPptzTggA3e_prop3 <=> prop3o }