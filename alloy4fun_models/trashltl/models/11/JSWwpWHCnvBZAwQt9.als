open main
pred idJSWwpWHCnvBZAwQt9_prop12 {
	eventually some f:File | f not in Trash implies f in Trash'
}
pred __repair { idJSWwpWHCnvBZAwQt9_prop12 }
check __repair { idJSWwpWHCnvBZAwQt9_prop12 <=> prop12o }