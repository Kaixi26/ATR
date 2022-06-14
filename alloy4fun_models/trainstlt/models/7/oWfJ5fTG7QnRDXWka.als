open main
pred idoWfJ5fTG7QnRDXWka_prop8 {
	
	always (all t:Train |(t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))

}
pred __repair { idoWfJ5fTG7QnRDXWka_prop8 }
check __repair { idoWfJ5fTG7QnRDXWka_prop8 <=> prop8o }