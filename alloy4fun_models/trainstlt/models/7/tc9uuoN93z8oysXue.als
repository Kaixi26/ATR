open main
pred idtc9uuoN93z8oysXue_prop8 {
	
	always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') since  ((t.pos'.signal) in Green))

}
pred __repair { idtc9uuoN93z8oysXue_prop8 }
check __repair { idtc9uuoN93z8oysXue_prop8 <=> prop8o }