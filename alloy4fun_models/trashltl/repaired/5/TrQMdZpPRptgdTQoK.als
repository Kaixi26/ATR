open main
pred idTrQMdZpPRptgdTQoK_prop6 {
	all f : File | f in Trash implies always f in Trash
}
pred __repair { idTrQMdZpPRptgdTQoK_prop6 }
check __repair { idTrQMdZpPRptgdTQoK_prop6 <=> prop6o }