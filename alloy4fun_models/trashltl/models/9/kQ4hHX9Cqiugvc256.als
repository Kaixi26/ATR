open main
pred idkQ4hHX9Cqiugvc256_prop10 {
	
  always all f:File | f in Protected implies f in Protected
}
pred __repair { idkQ4hHX9Cqiugvc256_prop10 }
check __repair { idkQ4hHX9Cqiugvc256_prop10 <=> prop10o }