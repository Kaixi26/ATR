open main
pred idZxPvKxYDYMaXizedF_prop8 {
	
	always ( all t:Train, s:Signal | some (t.prox).signal :> s implies (s in Green) releases (t.pos' = t.pos) )
}
pred __repair { idZxPvKxYDYMaXizedF_prop8 }
check __repair { idZxPvKxYDYMaXizedF_prop8 <=> prop8o }