open main
pred idiC9oAhT7dcxMBsNPy_prop14 {
	
	always ( all t:Train | ( one (t.pos.signal :>Green) )implies eventually (t.pos.signal in  Signal-Green) )

}
pred __repair { idiC9oAhT7dcxMBsNPy_prop14 }
check __repair { idiC9oAhT7dcxMBsNPy_prop14 <=> prop14o }