open main
pred id67r6uWNjgZXmYr6QE_prop8 {
	
	always (all t:Train |some t.pos and (t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))

}
pred __repair { id67r6uWNjgZXmYr6QE_prop8 }
check __repair { id67r6uWNjgZXmYr6QE_prop8 <=> prop8o }