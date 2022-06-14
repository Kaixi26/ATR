open main
pred ida4ocztnc9KxWCwpXA_prop11 {
	
	always ( all t:Train| some t.pos and once t.pos in Entry) 
}
pred __repair { ida4ocztnc9KxWCwpXA_prop11 }
check __repair { ida4ocztnc9KxWCwpXA_prop11 <=> prop11o }