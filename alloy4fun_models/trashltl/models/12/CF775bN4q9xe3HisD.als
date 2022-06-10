open main
pred idCF775bN4q9xe3HisD_prop13 {
	always all f : File | always (f in Trash) implies once f in Trash
}
pred __repair { idCF775bN4q9xe3HisD_prop13 }
check __repair { idCF775bN4q9xe3HisD_prop13 <=> prop13o }