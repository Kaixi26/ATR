open main
pred idfJdBs9y9QeEeBQTvd_prop11 {
	
	always ( all t:Train | some t.pos :> (Track-Entry) implies historically ( t.pos in Entry) )
}
pred __repair { idfJdBs9y9QeEeBQTvd_prop11 }
check __repair { idfJdBs9y9QeEeBQTvd_prop11 <=> prop11o }