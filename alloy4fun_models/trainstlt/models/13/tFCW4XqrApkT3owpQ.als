open main
pred idtFCW4XqrApkT3owpQ_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )

}
pred __repair { idtFCW4XqrApkT3owpQ_prop14 }
check __repair { idtFCW4XqrApkT3owpQ_prop14 <=> prop14o }