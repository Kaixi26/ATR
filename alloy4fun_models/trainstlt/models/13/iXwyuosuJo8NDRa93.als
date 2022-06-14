open main
pred idiXwyuosuJo8NDRa93_prop14 {
	
	always ( all t:Train | eventually (some t.pos  and  one (t.pos.signal :>Green) and t.pos' !=t. pos and some t.pos') implies (t.pos.signal in  Signal-Green) )

}
pred __repair { idiXwyuosuJo8NDRa93_prop14 }
check __repair { idiXwyuosuJo8NDRa93_prop14 <=> prop14o }