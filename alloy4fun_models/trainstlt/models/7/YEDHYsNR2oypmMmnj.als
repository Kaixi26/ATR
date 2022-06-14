open main
pred idYEDHYsNR2oypmMmnj_prop8 {
	
	always ( all t:Train | some t.pos.prox.signal implies (t.pos.prox.signal in Green) releases (t.pos' = t.pos) ) 
}
pred __repair { idYEDHYsNR2oypmMmnj_prop8 }
check __repair { idYEDHYsNR2oypmMmnj_prop8 <=> prop8o }