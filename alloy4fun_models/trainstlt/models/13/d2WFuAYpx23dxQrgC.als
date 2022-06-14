open main
pred idd2WFuAYpx23dxQrgC_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and no t.pos' )implies (t.pos.signal in  Signal-Green) )

}
pred __repair { idd2WFuAYpx23dxQrgC_prop14 }
check __repair { idd2WFuAYpx23dxQrgC_prop14 <=> prop14o }