open main
pred idHHucFSeWh62GWDbNG_prop8 {
	
  	always all t : ((Signal-Green).(~signal).(~pos)) | (t.pos' in t.pos.prox) implies (t.pos.signal in Green)
	
}
pred __repair { idHHucFSeWh62GWDbNG_prop8 }
check __repair { idHHucFSeWh62GWDbNG_prop8 <=> prop8o }