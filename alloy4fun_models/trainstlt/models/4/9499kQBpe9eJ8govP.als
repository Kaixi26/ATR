open main
pred id9499kQBpe9eJ8govP_prop5 {
	
	always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox) ) or  t.pos.prox in Exit implies no t.pos')
}
pred __repair { id9499kQBpe9eJ8govP_prop5 }
check __repair { id9499kQBpe9eJ8govP_prop5 <=> prop5o }