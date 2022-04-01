open main
pred idvijahzyogXPZjm8er_prop19 {
	all f:File | f in Protected until f in Trash
}
pred __repair { idvijahzyogXPZjm8er_prop19 }
check __repair { idvijahzyogXPZjm8er_prop19 <=> prop19o }