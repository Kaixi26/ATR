open main
pred idWmnf67hkoJyM6yJB8_prop14 {
	
	always ( all t:Train | let tr=t.pos |pos!=pos' and ( one (tr.signal :>Green) )implies after (tr.signal in  Signal-Green) )

}
pred __repair { idWmnf67hkoJyM6yJB8_prop14 }
check __repair { idWmnf67hkoJyM6yJB8_prop14 <=> prop14o }