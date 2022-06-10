open main
pred id7X2Xf9szSKcpPz6mQ_prop12 {
  	
  	
  	always all f:File | eventually f in Trash implies always f in Trash' 
  
}
pred __repair { id7X2Xf9szSKcpPz6mQ_prop12 }
check __repair { id7X2Xf9szSKcpPz6mQ_prop12 <=> prop12o }