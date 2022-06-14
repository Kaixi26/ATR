open main
pred idje3QfYCfSYrSbkf7n_prop14 {
	
	always ( all t:Train | (some t.pos and one t.pos.signal and some (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )

}
pred __repair { idje3QfYCfSYrSbkf7n_prop14 }
check __repair { idje3QfYCfSYrSbkf7n_prop14 <=> prop14o }