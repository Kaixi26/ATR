open main
pred id38aWjvGCon5TxaBeC_prop12 {
  	
  	
  	always eventually all f:File | f in Trash implies always f in Trash'
  
}
pred __repair { id38aWjvGCon5TxaBeC_prop12 }
check __repair { id38aWjvGCon5TxaBeC_prop12 <=> prop12o }