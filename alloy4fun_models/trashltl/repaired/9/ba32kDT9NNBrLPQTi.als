open main
pred idba32kDT9NNBrLPQTi_prop10 { 
	always all f:Protected | always f in Protected
}
pred __repair { idba32kDT9NNBrLPQTi_prop10 }
check __repair { idba32kDT9NNBrLPQTi_prop10 <=> prop10o }