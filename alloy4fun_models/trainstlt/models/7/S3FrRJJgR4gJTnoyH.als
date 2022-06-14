open main
pred idS3FrRJJgR4gJTnoyH_prop8 {
	
	always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') implies  ((t.pos'.signal) in Green))

}
pred __repair { idS3FrRJJgR4gJTnoyH_prop8 }
check __repair { idS3FrRJJgR4gJTnoyH_prop8 <=> prop8o }