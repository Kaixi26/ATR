open main
pred idCPRbeqYYqqxGnbfiS_prop6 {
	
	always all s : Signal | always eventually s' != s
}
pred __repair { idCPRbeqYYqqxGnbfiS_prop6 }
check __repair { idCPRbeqYYqqxGnbfiS_prop6 <=> prop6o }