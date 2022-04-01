open main
pred idDdnwMS2xyJtELEzmt_prop9 {
	all f: File | always(f in Protected implies f not in Trash)
}
pred __repair { idDdnwMS2xyJtELEzmt_prop9 }
check __repair { idDdnwMS2xyJtELEzmt_prop9 <=> prop9o }