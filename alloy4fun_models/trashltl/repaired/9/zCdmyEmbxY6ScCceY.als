open main
pred idzCdmyEmbxY6ScCceY_prop10 {
	always all f:File | f in Protected implies f in Protected
}
pred __repair { idzCdmyEmbxY6ScCceY_prop10 }
check __repair { idzCdmyEmbxY6ScCceY_prop10 <=> prop10o }