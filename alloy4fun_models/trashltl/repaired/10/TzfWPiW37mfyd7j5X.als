open main
pred idTzfWPiW37mfyd7j5X_prop11 {
  	
	always all f:File | f not in Protected implies f in Protected  
}
pred __repair { idTzfWPiW37mfyd7j5X_prop11 }
check __repair { idTzfWPiW37mfyd7j5X_prop11 <=> prop11o }