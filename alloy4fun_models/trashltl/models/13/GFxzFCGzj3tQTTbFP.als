open main
pred idGFxzFCGzj3tQTTbFP_prop14 {
	all f:File | f in Protected&Trash implies after (f in Trash-Protected)
}
pred __repair { idGFxzFCGzj3tQTTbFP_prop14 }
check __repair { idGFxzFCGzj3tQTTbFP_prop14 <=> prop14o }