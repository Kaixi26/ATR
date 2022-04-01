open main
pred idYJZERXjfvstHdY26Y_prop6 {
	all f : File-Trash | eventually f in Trash => always f in Trash
}
pred __repair { idYJZERXjfvstHdY26Y_prop6 }
check __repair { idYJZERXjfvstHdY26Y_prop6 <=> prop6o }