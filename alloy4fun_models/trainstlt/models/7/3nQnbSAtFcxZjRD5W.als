open main
pred id3nQnbSAtFcxZjRD5W_prop8 {
	
	always (all t:Train |(some t.pos and  some t.pos.signal) and (t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))

}
pred __repair { id3nQnbSAtFcxZjRD5W_prop8 }
check __repair { id3nQnbSAtFcxZjRD5W_prop8 <=> prop8o }