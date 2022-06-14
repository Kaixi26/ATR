open main
pred id7CaJQTPPPNXt8Bdd7_prop8 {
	
	all t:Train | some t.pos.signal and t.pos.signal in Green implies t.pos' = t.pos
}
pred __repair { id7CaJQTPPPNXt8Bdd7_prop8 }
check __repair { id7CaJQTPPPNXt8Bdd7_prop8 <=> prop8o }