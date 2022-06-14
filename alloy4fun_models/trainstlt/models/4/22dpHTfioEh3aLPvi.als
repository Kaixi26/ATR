open main
pred id22dpHTfioEh3aLPvi_prop5 {
	
	always (all t:Train |t.pos in Entry  implies  (t.pos'= t.pos.prox)   or  t.pos in Exit implies no t.pos')
}
pred __repair { id22dpHTfioEh3aLPvi_prop5 }
check __repair { id22dpHTfioEh3aLPvi_prop5 <=> prop5o }