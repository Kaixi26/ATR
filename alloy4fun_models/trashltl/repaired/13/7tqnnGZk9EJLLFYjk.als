open main
pred id7tqnnGZk9EJLLFYjk_prop14 {
	
	  	always all f:File | f in Trash implies f in Protected'
  
}
pred __repair { id7tqnnGZk9EJLLFYjk_prop14 }
check __repair { id7tqnnGZk9EJLLFYjk_prop14 <=> prop14o }