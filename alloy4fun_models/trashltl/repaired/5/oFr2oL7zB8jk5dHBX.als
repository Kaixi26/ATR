open main
pred idoFr2oL7zB8jk5dHBX_prop6 {
	all f : File | f not in Trash and f in Trash' => always f in Trash
}
pred __repair { idoFr2oL7zB8jk5dHBX_prop6 }
check __repair { idoFr2oL7zB8jk5dHBX_prop6 <=> prop6o }