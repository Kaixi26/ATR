open main
pred idcEKCKmM7P4WqBgRkM_prop5 {
	
	always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox) ) or  t.pos in Exit implies no t.pos')
}
pred __repair { idcEKCKmM7P4WqBgRkM_prop5 }
check __repair { idcEKCKmM7P4WqBgRkM_prop5 <=> prop5o }