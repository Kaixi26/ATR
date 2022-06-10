open main
pred idito7oAsX9aDWEcSwx_prop6 {
	all f : File | always (f in Trash-Protected implies always f in Trash-Protected)
}
pred __repair { idito7oAsX9aDWEcSwx_prop6 }
check __repair { idito7oAsX9aDWEcSwx_prop6 <=> prop6o }