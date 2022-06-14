open main
pred idgtc5bxke4Wckpk4bx_prop7 {
	
  	all t : Train | (eventually always no t.pos')
}
pred __repair { idgtc5bxke4Wckpk4bx_prop7 }
check __repair { idgtc5bxke4Wckpk4bx_prop7 <=> prop7o }