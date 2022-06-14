open main
pred idJQPZALKgQ5486TkjX_prop7 {
	
	always ( all t:Train | some t.pos :> (Entry+Exit) implies eventually no t.pos :> (Entry+Exit) )
}
pred __repair { idJQPZALKgQ5486TkjX_prop7 }
check __repair { idJQPZALKgQ5486TkjX_prop7 <=> prop7o }