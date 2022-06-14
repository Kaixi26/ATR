open main
pred id7HDazaamzmN8Ci6y8_prop8 {
	
	always ( all t:Train, s:Signal | some (t.pos).signal :> s implies (s in Green) releases (t.pos' = t.pos) )
}
pred __repair { id7HDazaamzmN8Ci6y8_prop8 }
check __repair { id7HDazaamzmN8Ci6y8_prop8 <=> prop8o }