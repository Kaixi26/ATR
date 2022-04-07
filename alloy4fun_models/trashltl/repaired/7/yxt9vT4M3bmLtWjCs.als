open main
pred idyxt9vT4M3bmLtWjCs_prop8 {
	all f1:File , f2:File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { idyxt9vT4M3bmLtWjCs_prop8 }
check __repair { idyxt9vT4M3bmLtWjCs_prop8 <=> prop8o }