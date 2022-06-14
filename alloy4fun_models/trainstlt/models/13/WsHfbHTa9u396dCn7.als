open main
pred idWsHfbHTa9u396dCn7_prop14 {
	
	always ( all t:Train | ( one (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { idWsHfbHTa9u396dCn7_prop14 }
check __repair { idWsHfbHTa9u396dCn7_prop14 <=> prop14o }