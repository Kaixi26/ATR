open main
pred idbjYkrRNbHzu2MkrxD_prop6 {
	
	always all s : Signal | always (s in Green implies s' not in Green)
}
pred __repair { idbjYkrRNbHzu2MkrxD_prop6 }
check __repair { idbjYkrRNbHzu2MkrxD_prop6 <=> prop6o }