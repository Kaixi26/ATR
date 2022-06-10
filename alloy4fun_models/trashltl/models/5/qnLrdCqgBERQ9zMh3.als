open main
pred idqnLrdCqgBERQ9zMh3_prop6 {
	all f : File | f not in Trash and after f in Trash => always f in Trash
}
pred __repair { idqnLrdCqgBERQ9zMh3_prop6 }
check __repair { idqnLrdCqgBERQ9zMh3_prop6 <=> prop6o }