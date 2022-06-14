open main
pred ida5pS6TeY7yZDsqPdQ_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { ida5pS6TeY7yZDsqPdQ_prop14 }
check __repair { ida5pS6TeY7yZDsqPdQ_prop14 <=> prop14o }