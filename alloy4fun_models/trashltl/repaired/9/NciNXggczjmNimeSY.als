open main
pred idNciNXggczjmNimeSY_prop10 {
	always all f:File | f in Protected implies after always f in Protected
}
pred __repair { idNciNXggczjmNimeSY_prop10 }
check __repair { idNciNXggczjmNimeSY_prop10 <=> prop10o }