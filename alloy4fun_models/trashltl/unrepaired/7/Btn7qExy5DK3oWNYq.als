open main
pred idBtn7qExy5DK3oWNYq_prop8 {
	
  	always (all f:File | some f.link implies eventually f.link in Trash)	
  	
}
pred __repair { idBtn7qExy5DK3oWNYq_prop8 }
check __repair { idBtn7qExy5DK3oWNYq_prop8 <=> prop8o }