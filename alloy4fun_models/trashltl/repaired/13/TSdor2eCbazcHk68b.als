open main
pred idTSdor2eCbazcHk68b_prop14 {
	all f:File | f in Protected&Trash releases f not in Protected
}
pred __repair { idTSdor2eCbazcHk68b_prop14 }
check __repair { idTSdor2eCbazcHk68b_prop14 <=> prop14o }