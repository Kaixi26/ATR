open main
pred iddMPT4v8cpSoChwfre_prop19 {
	always all p : Protected | eventually p in Trash && (always p not in Trash => p in Protected)
}
pred __repair { iddMPT4v8cpSoChwfre_prop19 }
check __repair { iddMPT4v8cpSoChwfre_prop19 <=> prop19o }