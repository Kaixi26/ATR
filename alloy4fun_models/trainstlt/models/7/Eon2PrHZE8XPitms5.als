open main
pred idEon2PrHZE8XPitms5_prop8 {
	
  	always all t : ((Signal-Green).(~signal).(~pos)) | (t.pos' in t.pos.prox) implies (t.pos.signal in Green)
	
}
pred __repair { idEon2PrHZE8XPitms5_prop8 }
check __repair { idEon2PrHZE8XPitms5_prop8 <=> prop8o }