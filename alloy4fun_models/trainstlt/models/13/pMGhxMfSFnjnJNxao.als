open main
pred idpMGhxMfSFnjnJNxao_prop14 {
	
	always ( all t:Train | (some t.pos and some (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { idpMGhxMfSFnjnJNxao_prop14 }
check __repair { idpMGhxMfSFnjnJNxao_prop14 <=> prop14o }