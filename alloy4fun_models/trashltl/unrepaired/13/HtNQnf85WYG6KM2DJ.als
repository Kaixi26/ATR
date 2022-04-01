open main
pred idHtNQnf85WYG6KM2DJ_prop14 {
	always all f : File | always f in Trash implies after f not in Protected
}
pred __repair { idHtNQnf85WYG6KM2DJ_prop14 }
check __repair { idHtNQnf85WYG6KM2DJ_prop14 <=> prop14o }