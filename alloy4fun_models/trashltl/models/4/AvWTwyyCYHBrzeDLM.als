open main
pred idAvWTwyyCYHBrzeDLM_prop5 {
	all f : Trash | eventually f not in File
}
pred __repair { idAvWTwyyCYHBrzeDLM_prop5 }
check __repair { idAvWTwyyCYHBrzeDLM_prop5 <=> prop5o }