open main
pred id89TJcnJ4ef3sudsxM_prop8 {
	
	always (all t:Train | (some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies ((t.pos in t.pos.prox) since  (t.pos.signal in Green) )))

}
pred __repair { id89TJcnJ4ef3sudsxM_prop8 }
check __repair { id89TJcnJ4ef3sudsxM_prop8 <=> prop8o }