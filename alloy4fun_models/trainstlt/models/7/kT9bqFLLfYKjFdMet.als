open main
pred idkT9bqFLLfYKjFdMet_prop8 {
	
	always ( all t:Train |  (t.pos.signal  in Signal-Green) implies t.pos' = t.pos )
}
pred __repair { idkT9bqFLLfYKjFdMet_prop8 }
check __repair { idkT9bqFLLfYKjFdMet_prop8 <=> prop8o }