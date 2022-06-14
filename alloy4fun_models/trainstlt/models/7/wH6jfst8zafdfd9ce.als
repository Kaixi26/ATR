open main
pred idwH6jfst8zafdfd9ce_prop8 {
	
	always (all t:Train | (some t.pos and  some t.pos.signal and some t.pos.prox) and ((t.pos.signal)  in (Signal-Green)  implies (some t.pos') since  eventually ((t.pos.signal) in Green)))

}
pred __repair { idwH6jfst8zafdfd9ce_prop8 }
check __repair { idwH6jfst8zafdfd9ce_prop8 <=> prop8o }