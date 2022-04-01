open main
pred idfzZ6FHpHXBABdyPPM_prop10 {
	always all f:File | f in Protected implies always f in Protected'
}
pred __repair { idfzZ6FHpHXBABdyPPM_prop10 }
check __repair { idfzZ6FHpHXBABdyPPM_prop10 <=> prop10o }