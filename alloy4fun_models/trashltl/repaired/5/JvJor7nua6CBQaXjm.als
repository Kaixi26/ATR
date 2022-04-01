open main
pred idJvJor7nua6CBQaXjm_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idJvJor7nua6CBQaXjm_prop6 }
check __repair { idJvJor7nua6CBQaXjm_prop6 <=> prop6o }