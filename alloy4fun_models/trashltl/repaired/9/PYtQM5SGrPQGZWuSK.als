open main
pred idPYtQM5SGrPQGZWuSK_prop10 {
	always all f:File | f in Protected implies always f in Protected'
}
pred __repair { idPYtQM5SGrPQGZWuSK_prop10 }
check __repair { idPYtQM5SGrPQGZWuSK_prop10 <=> prop10o }