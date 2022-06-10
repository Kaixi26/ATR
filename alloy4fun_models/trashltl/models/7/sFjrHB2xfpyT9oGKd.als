open main
pred idsFjrHB2xfpyT9oGKd_prop8 {
	 all f:File| eventually f.^link  in Trash
}
pred __repair { idsFjrHB2xfpyT9oGKd_prop8 }
check __repair { idsFjrHB2xfpyT9oGKd_prop8 <=> prop8o }