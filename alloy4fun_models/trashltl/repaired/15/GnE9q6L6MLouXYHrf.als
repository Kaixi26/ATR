open main
pred idGnE9q6L6MLouXYHrf_prop16 {
	all f : File | (f in Protected) implies (historically f in Protected)
}
pred __repair { idGnE9q6L6MLouXYHrf_prop16 }
check __repair { idGnE9q6L6MLouXYHrf_prop16 <=> prop16o }