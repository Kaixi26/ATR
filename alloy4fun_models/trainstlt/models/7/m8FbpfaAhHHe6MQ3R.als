open main
pred idm8FbpfaAhHHe6MQ3R_prop8 {
	
	always (all t:Train |(some t.pos and  some t.pos.signal and some t.pos.prox) and (t.pos.signal)  in (Signal-Green) implies(some t.pos') since  ((t.pos'.signal) in Green))

}
pred __repair { idm8FbpfaAhHHe6MQ3R_prop8 }
check __repair { idm8FbpfaAhHHe6MQ3R_prop8 <=> prop8o }