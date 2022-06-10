open main
pred idYackNJje8N55ZNTWy_prop5 {
	
  	some f: File | f not in Trash implies after f in Trash
}
pred __repair { idYackNJje8N55ZNTWy_prop5 }
check __repair { idYackNJje8N55ZNTWy_prop5 <=> prop5o }