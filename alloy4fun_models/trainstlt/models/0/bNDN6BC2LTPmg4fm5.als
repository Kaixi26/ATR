open main
pred idbNDN6BC2LTPmg4fm5_prop1 {
	
	all t:Track | once Green not in t.signal
}
pred __repair { idbNDN6BC2LTPmg4fm5_prop1 }
check __repair { idbNDN6BC2LTPmg4fm5_prop1 <=> prop1o }