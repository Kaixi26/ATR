open main
pred idktarPcc37MrTky56p_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and no t.pos' )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { idktarPcc37MrTky56p_prop14 }
check __repair { idktarPcc37MrTky56p_prop14 <=> prop14o }