open main
pred idMcq6ZPARXFvT9HHAB_prop18 {
  	
	
  	all f: File | f in Trash triggered f not in Protected
}
pred __repair { idMcq6ZPARXFvT9HHAB_prop18 }
check __repair { idMcq6ZPARXFvT9HHAB_prop18 <=> prop18o }