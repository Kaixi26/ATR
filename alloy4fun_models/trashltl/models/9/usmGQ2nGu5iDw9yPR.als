open main
pred idusmGQ2nGu5iDw9yPR_prop10 {
	always (all f:File | f in Protected implies always f in Protected)
}
pred __repair { idusmGQ2nGu5iDw9yPR_prop10 }
check __repair { idusmGQ2nGu5iDw9yPR_prop10 <=> prop10o }