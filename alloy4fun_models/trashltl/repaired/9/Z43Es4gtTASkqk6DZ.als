open main
pred idZ43Es4gtTASkqk6DZ_prop10 {
	always all f:File | f in Protected implies always f in Protected and f not in Protected implies always f not in Protected
}
pred __repair { idZ43Es4gtTASkqk6DZ_prop10 }
check __repair { idZ43Es4gtTASkqk6DZ_prop10 <=> prop10o }