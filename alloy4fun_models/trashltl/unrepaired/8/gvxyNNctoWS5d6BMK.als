open main
pred idgvxyNNctoWS5d6BMK_prop9 {
	always all f: File | f not in Trash
}
pred __repair { idgvxyNNctoWS5d6BMK_prop9 }
check __repair { idgvxyNNctoWS5d6BMK_prop9 <=> prop9o }