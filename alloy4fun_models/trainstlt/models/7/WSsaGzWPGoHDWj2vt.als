open main
pred idWSsaGzWPGoHDWj2vt_prop8 {
	
	always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') since  ((t.pos.signal) in Green))

}
pred __repair { idWSsaGzWPGoHDWj2vt_prop8 }
check __repair { idWSsaGzWPGoHDWj2vt_prop8 <=> prop8o }