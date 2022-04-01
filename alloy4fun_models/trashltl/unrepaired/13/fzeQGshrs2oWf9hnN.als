open main
pred idfzeQGshrs2oWf9hnN_prop14 {
	all f:File | f in Protected&Trash implies after (f in Trash)
}
pred __repair { idfzeQGshrs2oWf9hnN_prop14 }
check __repair { idfzeQGshrs2oWf9hnN_prop14 <=> prop14o }