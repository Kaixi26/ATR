open main
pred idaKjm5o5kJLkx8S4YF_prop8 {
	
	always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') and  ((t.pos.signal) in Green))

}
pred __repair { idaKjm5o5kJLkx8S4YF_prop8 }
check __repair { idaKjm5o5kJLkx8S4YF_prop8 <=> prop8o }