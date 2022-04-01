open main
pred idFvrHqufmzdKNwjB8e_prop6 {
 	eventually all f:File | f in Trash implies always f in Trash'
}
pred __repair { idFvrHqufmzdKNwjB8e_prop6 }
check __repair { idFvrHqufmzdKNwjB8e_prop6 <=> prop6o }