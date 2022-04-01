open main
pred idTSvSdhcqPa9jGMc5Y_prop13 {
	always some f:File | f in Trash implies once f in File-Trash
}
pred __repair { idTSvSdhcqPa9jGMc5Y_prop13 }
check __repair { idTSvSdhcqPa9jGMc5Y_prop13 <=> prop13o }