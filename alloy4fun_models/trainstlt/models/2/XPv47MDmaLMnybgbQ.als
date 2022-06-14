open main
pred idXPv47MDmaLMnybgbQ_prop3 {
	
	always (all t:Train, k:Track | t.pos = k implies after t.pos = k)
}
pred __repair { idXPv47MDmaLMnybgbQ_prop3 }
check __repair { idXPv47MDmaLMnybgbQ_prop3 <=> prop3o }