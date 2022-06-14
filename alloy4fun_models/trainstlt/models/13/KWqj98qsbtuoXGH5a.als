open main
pred idKWqj98qsbtuoXGH5a_prop14 {
	
	always ( all t:Train | ( one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )

}
pred __repair { idKWqj98qsbtuoXGH5a_prop14 }
check __repair { idKWqj98qsbtuoXGH5a_prop14 <=> prop14o }