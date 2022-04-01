open main
pred idjxTWDKD9tjNAqfNNc_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idjxTWDKD9tjNAqfNNc_prop6 }
check __repair { idjxTWDKD9tjNAqfNNc_prop6 <=> prop6o }