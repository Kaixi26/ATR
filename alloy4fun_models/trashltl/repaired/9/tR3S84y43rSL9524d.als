open main
pred idtR3S84y43rSL9524d_prop10 {
	always all f:File | f in Protected implies  f in Protected
}
pred __repair { idtR3S84y43rSL9524d_prop10 }
check __repair { idtR3S84y43rSL9524d_prop10 <=> prop10o }