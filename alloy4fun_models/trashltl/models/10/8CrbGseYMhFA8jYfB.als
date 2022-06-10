open main
pred id8CrbGseYMhFA8jYfB_prop11 {
	all f:File | f not in Protected implies after f in Protected
}
pred __repair { id8CrbGseYMhFA8jYfB_prop11 }
check __repair { id8CrbGseYMhFA8jYfB_prop11 <=> prop11o }