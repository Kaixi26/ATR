open main
pred idFrxbBrBvouFuzqKse_prop9 {
	all f: File | eventually f in Protected implies always f not in Trash 
}
pred __repair { idFrxbBrBvouFuzqKse_prop9 }
check __repair { idFrxbBrBvouFuzqKse_prop9 <=> prop9o }