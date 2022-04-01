open main
pred id4nykCCrfSuJQvq7qe_prop11 {
	all a : File - (File & Protected) |  after (a in Protected) 
}
pred __repair { id4nykCCrfSuJQvq7qe_prop11 }
check __repair { id4nykCCrfSuJQvq7qe_prop11 <=> prop11o }