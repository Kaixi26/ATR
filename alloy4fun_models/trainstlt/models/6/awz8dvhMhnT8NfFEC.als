open main
pred idawz8dvhMhnT8NfFEC_prop7 {
	
	always (all t :Train|t.pos in Entry implies  eventually  t.pos in Exit)
}
pred __repair { idawz8dvhMhnT8NfFEC_prop7 }
check __repair { idawz8dvhMhnT8NfFEC_prop7 <=> prop7o }