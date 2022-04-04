open main
pred idTtxjZqhRvrdGLqm9k_prop14 {
	
	  	always all f:File | f in Trash implies f in Protected' and not f in Trash'
  
}
pred __repair { idTtxjZqhRvrdGLqm9k_prop14 }
check __repair { idTtxjZqhRvrdGLqm9k_prop14 <=> prop14o }