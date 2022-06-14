open main
pred idbwjx7xAdXG9c9zDnZ_prop1 {
	
	always (all t:Entry | Green not in t.signal)
}
pred __repair { idbwjx7xAdXG9c9zDnZ_prop1 }
check __repair { idbwjx7xAdXG9c9zDnZ_prop1 <=> prop1o }