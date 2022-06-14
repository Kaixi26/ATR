open main
pred idEzAjnds9sMvTyXecT_prop8 {
	
	always (all t:Train | (some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies before ((t.pos in t.pos.prox) since  (t.pos.signal in Green) )))

}
pred __repair { idEzAjnds9sMvTyXecT_prop8 }
check __repair { idEzAjnds9sMvTyXecT_prop8 <=> prop8o }