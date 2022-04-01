open main
pred idbTqLGwhq7ppy5SMsv_prop6 {
	all f : File-Protected | f not in Trash and after f in Trash => always f in Trash
}
pred __repair { idbTqLGwhq7ppy5SMsv_prop6 }
check __repair { idbTqLGwhq7ppy5SMsv_prop6 <=> prop6o }