open main
pred idLiDFi5sMmbPuH7P6j_prop14 {
	all f:File | (f in Trash and f in Protected) implies f not in Protected'
}
pred __repair { idLiDFi5sMmbPuH7P6j_prop14 }
check __repair { idLiDFi5sMmbPuH7P6j_prop14 <=> prop14o }