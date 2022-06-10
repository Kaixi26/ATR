open main
pred idcdnCAJXffPjLxgWia_prop10 {
  	always all f:File | f in Protected implies always f in Protected
	
}
pred __repair { idcdnCAJXffPjLxgWia_prop10 }
check __repair { idcdnCAJXffPjLxgWia_prop10 <=> prop10o }