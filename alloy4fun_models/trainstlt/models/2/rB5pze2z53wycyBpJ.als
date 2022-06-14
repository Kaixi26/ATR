open main
pred idrB5pze2z53wycyBpJ_prop3 {
	
	always (all t : Train | t not in Track)
}
pred __repair { idrB5pze2z53wycyBpJ_prop3 }
check __repair { idrB5pze2z53wycyBpJ_prop3 <=> prop3o }