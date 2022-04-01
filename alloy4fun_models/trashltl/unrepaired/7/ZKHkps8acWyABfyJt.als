open main
pred idZKHkps8acWyABfyJt_prop8 {
	eventually all f:File | f.link in Trash
}
pred __repair { idZKHkps8acWyABfyJt_prop8 }
check __repair { idZKHkps8acWyABfyJt_prop8 <=> prop8o }