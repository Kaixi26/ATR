open main
pred idgKwEGhytRDRitKhbc_prop8 {
	
	always (all t:Train | (some t.pos.signal and some t.pos.prox) and ((t.pos.signal)  in (Signal-Green)  implies eventually (some t.pos) since  ((t.pos.signal) in Green)))

}
pred __repair { idgKwEGhytRDRitKhbc_prop8 }
check __repair { idgKwEGhytRDRitKhbc_prop8 <=> prop8o }