open main
pred idywBcSd7vLhuWTt7ZR_prop12 {
  	
  	
  	always all f:File | eventually f in Trash implies always f in Trash'
  
}
pred __repair { idywBcSd7vLhuWTt7ZR_prop12 }
check __repair { idywBcSd7vLhuWTt7ZR_prop12 <=> prop12o }