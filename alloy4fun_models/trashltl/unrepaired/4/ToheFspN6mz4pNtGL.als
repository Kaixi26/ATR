open main
pred idToheFspN6mz4pNtGL_prop5 {
	always (some f:Trash-Protected | eventually no Trash & f)
}
pred __repair { idToheFspN6mz4pNtGL_prop5 }
check __repair { idToheFspN6mz4pNtGL_prop5 <=> prop5o }