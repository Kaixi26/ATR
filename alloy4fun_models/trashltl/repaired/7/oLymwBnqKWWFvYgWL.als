open main
pred idoLymwBnqKWWFvYgWL_prop8 {
	always (all f:File| some f.^link  implies  eventually  f+f.^link  in Trash)
  	
}
pred __repair { idoLymwBnqKWWFvYgWL_prop8 }
check __repair { idoLymwBnqKWWFvYgWL_prop8 <=> prop8o }