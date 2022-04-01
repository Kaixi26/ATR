open main
pred idAiJhKNvWfhQmk5jiL_prop6 {
	all f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idAiJhKNvWfhQmk5jiL_prop6 }
check __repair { idAiJhKNvWfhQmk5jiL_prop6 <=> prop6o }