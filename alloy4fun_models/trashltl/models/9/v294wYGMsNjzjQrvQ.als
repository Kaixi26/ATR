open main
pred idv294wYGMsNjzjQrvQ_prop10 {
	all f:File | f in Protected  implies (always f in Protected)
}
pred __repair { idv294wYGMsNjzjQrvQ_prop10 }
check __repair { idv294wYGMsNjzjQrvQ_prop10 <=> prop10o }