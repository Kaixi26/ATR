open main
pred idL2JvJaSGK8uC5hN6N_prop8 {
	
	always ( all t:Train | no t.pos.signal :> Green implies t.pos' = t.pos )
}
pred __repair { idL2JvJaSGK8uC5hN6N_prop8 }
check __repair { idL2JvJaSGK8uC5hN6N_prop8 <=> prop8o }