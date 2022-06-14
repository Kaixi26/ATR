open main
pred id6NE4ya3xSzBMNLAM9_prop8 {
	
	all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') and  ((t.pos.signal) in Green)

}
pred __repair { id6NE4ya3xSzBMNLAM9_prop8 }
check __repair { id6NE4ya3xSzBMNLAM9_prop8 <=> prop8o }