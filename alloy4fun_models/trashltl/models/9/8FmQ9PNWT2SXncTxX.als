open main
pred id8FmQ9PNWT2SXncTxX_prop10 {
	
  	always all f:File | f in Protected implies f in Protected
}
pred __repair { id8FmQ9PNWT2SXncTxX_prop10 }
check __repair { id8FmQ9PNWT2SXncTxX_prop10 <=> prop10o }