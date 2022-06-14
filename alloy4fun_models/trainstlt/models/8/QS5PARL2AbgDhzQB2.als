open main
pred idQS5PARL2AbgDhzQB2_prop9 {
	
	  all t:Train | some t.pos and (t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   )
}
pred __repair { idQS5PARL2AbgDhzQB2_prop9 }
check __repair { idQS5PARL2AbgDhzQB2_prop9 <=> prop9o }