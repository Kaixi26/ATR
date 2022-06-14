open main
pred idqgFEGnynbKmAhcmZq_prop3 {
	
	
  	always( all t:Train | some t.pos implies after t.pos' = t.pos)
}
pred __repair { idqgFEGnynbKmAhcmZq_prop3 }
check __repair { idqgFEGnynbKmAhcmZq_prop3 <=> prop3o }