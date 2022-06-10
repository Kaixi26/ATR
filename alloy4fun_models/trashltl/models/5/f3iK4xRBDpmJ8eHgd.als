open main
pred idf3iK4xRBDpmJ8eHgd_prop6 {
	all f:File | f in Trash implies (always after f in Trash)
}
pred __repair { idf3iK4xRBDpmJ8eHgd_prop6 }
check __repair { idf3iK4xRBDpmJ8eHgd_prop6 <=> prop6o }