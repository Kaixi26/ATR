open main
pred id6MpZmerdbumpXZCpq_prop5 {
	
	always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox) ) or  t.pos in Exit implies no t.pos')
}
pred __repair { id6MpZmerdbumpXZCpq_prop5 }
check __repair { id6MpZmerdbumpXZCpq_prop5 <=> prop5o }