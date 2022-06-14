open main
pred idzt4CJmj6t8mi6Txg3_prop14 {
	
	always ( all t:Train | (some t.pos' and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )

}
pred __repair { idzt4CJmj6t8mi6Txg3_prop14 }
check __repair { idzt4CJmj6t8mi6Txg3_prop14 <=> prop14o }