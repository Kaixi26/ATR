open main
pred id4cs6GhABzzQcFKfEP_prop10 {
	always all f:File | f in Protected implies f in Protected'
}
pred __repair { id4cs6GhABzzQcFKfEP_prop10 }
check __repair { id4cs6GhABzzQcFKfEP_prop10 <=> prop10o }