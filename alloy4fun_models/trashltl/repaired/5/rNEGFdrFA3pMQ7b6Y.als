open main
pred idrNEGFdrFA3pMQ7b6Y_prop6 {
	some f: File | f in Trash implies always (f in Trash) 
}
pred __repair { idrNEGFdrFA3pMQ7b6Y_prop6 }
check __repair { idrNEGFdrFA3pMQ7b6Y_prop6 <=> prop6o }