open main
pred idxZ9AwZjnebNcycHmC_prop6 {
	all f:File | f in Trash implies after always f in Trash
}
pred __repair { idxZ9AwZjnebNcycHmC_prop6 }
check __repair { idxZ9AwZjnebNcycHmC_prop6 <=> prop6o }