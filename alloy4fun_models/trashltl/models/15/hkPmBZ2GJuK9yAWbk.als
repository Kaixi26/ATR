open main
pred idhkPmBZ2GJuK9yAWbk_prop16 {
	historically all f:File | f in Protected implies f in Protected 
}
pred __repair { idhkPmBZ2GJuK9yAWbk_prop16 }
check __repair { idhkPmBZ2GJuK9yAWbk_prop16 <=> prop16o }