open main
pred ido7sNEfGK2ow78R8tu_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { ido7sNEfGK2ow78R8tu_prop14 }
check __repair { ido7sNEfGK2ow78R8tu_prop14 <=> prop14o }