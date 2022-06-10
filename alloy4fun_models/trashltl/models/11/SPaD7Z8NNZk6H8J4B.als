open main
pred idSPaD7Z8NNZk6H8J4B_prop12 {
	some f:File-Protected | eventually always f in Trash
}
pred __repair { idSPaD7Z8NNZk6H8J4B_prop12 }
check __repair { idSPaD7Z8NNZk6H8J4B_prop12 <=> prop12o }