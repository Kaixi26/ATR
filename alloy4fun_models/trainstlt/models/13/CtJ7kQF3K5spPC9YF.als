open main
pred idCtJ7kQF3K5spPC9YF_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green)  )implies (t.pos != t.pos' and t.pos.signal in  Signal-Green) )

}
pred __repair { idCtJ7kQF3K5spPC9YF_prop14 }
check __repair { idCtJ7kQF3K5spPC9YF_prop14 <=> prop14o }