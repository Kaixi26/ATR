open main
pred idDCyf3Q3tbQvyyRjGh_prop17 {
	
	always (some t:Train | once (t.pos in Entry and historically no Entry) and eventually(t.pos in Exit and historically no Exit))
}
pred __repair { idDCyf3Q3tbQvyyRjGh_prop17 }
check __repair { idDCyf3Q3tbQvyyRjGh_prop17 <=> prop17o }