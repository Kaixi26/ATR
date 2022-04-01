open main
pred idJp9TRtzehJrYoFQTr_prop6 {
	all f : File | f in Trash => always f in Trash 
}
pred __repair { idJp9TRtzehJrYoFQTr_prop6 }
check __repair { idJp9TRtzehJrYoFQTr_prop6 <=> prop6o }