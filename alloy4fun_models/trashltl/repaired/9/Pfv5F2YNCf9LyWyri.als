open main
pred idPfv5F2YNCf9LyWyri_prop10 {
	always all f : Protected | after f in Protected
}
pred __repair { idPfv5F2YNCf9LyWyri_prop10 }
check __repair { idPfv5F2YNCf9LyWyri_prop10 <=> prop10o }