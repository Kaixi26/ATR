open main
pred idiSjkjcSoGpZd5Fjyy_prop8 {
	
	always (all t:Train | (some t.pos.signal and some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies  (t.pos in t.pos.prox) since  ((t.pos.signal) in Green)))

}
pred __repair { idiSjkjcSoGpZd5Fjyy_prop8 }
check __repair { idiSjkjcSoGpZd5Fjyy_prop8 <=> prop8o }