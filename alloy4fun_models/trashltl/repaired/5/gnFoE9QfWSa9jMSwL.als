open main
pred idgnFoE9QfWSa9jMSwL_prop6 {
	some f: File | always( f in Trash implies always f in Trash)
}
pred __repair { idgnFoE9QfWSa9jMSwL_prop6 }
check __repair { idgnFoE9QfWSa9jMSwL_prop6 <=> prop6o }