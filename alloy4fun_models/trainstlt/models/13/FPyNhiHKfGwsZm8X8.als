open main
pred idFPyNhiHKfGwsZm8X8_prop14 {
	
	always ( all t:Train | ( one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )

}
pred __repair { idFPyNhiHKfGwsZm8X8_prop14 }
check __repair { idFPyNhiHKfGwsZm8X8_prop14 <=> prop14o }