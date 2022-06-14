open main
pred id7w4dWMiLvmAvXTT4W_prop8 {
	
	always ( all t:Train | some s:Signal | (some (t.prox).signal :> s) and (s not in Green) implies t.pos' = t.pos)
}
pred __repair { id7w4dWMiLvmAvXTT4W_prop8 }
check __repair { id7w4dWMiLvmAvXTT4W_prop8 <=> prop8o }