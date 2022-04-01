open main
pred idXfprEbzvE8DktQafo_prop12 {
	eventually all f:File | f in Trash implies f in Trash
}
pred __repair { idXfprEbzvE8DktQafo_prop12 }
check __repair { idXfprEbzvE8DktQafo_prop12 <=> prop12o }