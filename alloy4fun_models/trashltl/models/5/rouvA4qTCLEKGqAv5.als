open main
pred idrouvA4qTCLEKGqAv5_prop6 {
	some f:File | f in Trash implies always f in Trash
}
pred __repair { idrouvA4qTCLEKGqAv5_prop6 }
check __repair { idrouvA4qTCLEKGqAv5_prop6 <=> prop6o }