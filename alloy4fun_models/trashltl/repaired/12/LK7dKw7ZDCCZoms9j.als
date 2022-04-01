open main
pred idLK7dKw7ZDCCZoms9j_prop13 {
	always all f : File | (always f in Trash) implies once f in Trash
}
pred __repair { idLK7dKw7ZDCCZoms9j_prop13 }
check __repair { idLK7dKw7ZDCCZoms9j_prop13 <=> prop13o }