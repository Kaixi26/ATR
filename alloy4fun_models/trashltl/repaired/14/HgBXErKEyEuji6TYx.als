open main
pred idHgBXErKEyEuji6TYx_prop15 {
	all f:File | f not in Trash implies eventually f in Trash
}
pred __repair { idHgBXErKEyEuji6TYx_prop15 }
check __repair { idHgBXErKEyEuji6TYx_prop15 <=> prop15o }