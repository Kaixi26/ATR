open main
pred idZF7tb3AJjFSSYaNpY_prop9 {
	all f:Protected | always f not in Trash
}
pred __repair { idZF7tb3AJjFSSYaNpY_prop9 }
check __repair { idZF7tb3AJjFSSYaNpY_prop9 <=> prop9o }