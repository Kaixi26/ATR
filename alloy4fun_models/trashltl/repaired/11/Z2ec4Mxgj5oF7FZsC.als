open main
pred idZ2ec4Mxgj5oF7FZsC_prop12 {
	eventually some f:File | f not in Trash implies always f in Trash'
}
pred __repair { idZ2ec4Mxgj5oF7FZsC_prop12 }
check __repair { idZ2ec4Mxgj5oF7FZsC_prop12 <=> prop12o }