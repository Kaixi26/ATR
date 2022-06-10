open main
pred idybAk2MjKGwJzJ9ZYL_prop18 {
	
	always (
      	all f : File | f in Protected and f not in Protected' implies f in Trash' 
	)
}
pred __repair { idybAk2MjKGwJzJ9ZYL_prop18 }
check __repair { idybAk2MjKGwJzJ9ZYL_prop18 <=> prop18o }