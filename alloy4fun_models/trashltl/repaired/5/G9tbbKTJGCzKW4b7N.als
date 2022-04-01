open main
pred idG9tbbKTJGCzKW4b7N_prop6 {
	always some f:File |  f in Trash implies after f in Trash
}
pred __repair { idG9tbbKTJGCzKW4b7N_prop6 }
check __repair { idG9tbbKTJGCzKW4b7N_prop6 <=> prop6o }