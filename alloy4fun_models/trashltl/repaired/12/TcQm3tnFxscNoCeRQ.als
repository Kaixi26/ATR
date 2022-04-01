open main
pred idTcQm3tnFxscNoCeRQ_prop13 {
	all f : File | (f in Trash) releases (f not in Trash)
}
pred __repair { idTcQm3tnFxscNoCeRQ_prop13 }
check __repair { idTcQm3tnFxscNoCeRQ_prop13 <=> prop13o }