open main
pred idhvrp9XFhMKqQrTtJc_prop10 {
	always all f:File | (f in Protected implies always f in Protected) and (f not in Protected implies always f not in Protected)
}
pred __repair { idhvrp9XFhMKqQrTtJc_prop10 }
check __repair { idhvrp9XFhMKqQrTtJc_prop10 <=> prop10o }