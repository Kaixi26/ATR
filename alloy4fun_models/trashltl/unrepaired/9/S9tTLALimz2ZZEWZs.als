open main
pred idS9tTLALimz2ZZEWZs_prop10 {
  	all f:File | f in Protected implies always f in Protected
	
}
pred __repair { idS9tTLALimz2ZZEWZs_prop10 }
check __repair { idS9tTLALimz2ZZEWZs_prop10 <=> prop10o }