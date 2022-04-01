open main
pred idpqDfjntRuvfHHx5Ba_prop6 {
	always (some f:File | f in Trash implies f in Trash')
}
pred __repair { idpqDfjntRuvfHHx5Ba_prop6 }
check __repair { idpqDfjntRuvfHHx5Ba_prop6 <=> prop6o }