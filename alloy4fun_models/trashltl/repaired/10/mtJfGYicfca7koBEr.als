open main
pred idmtJfGYicfca7koBEr_prop11 {
	all f : File | f not in Protected implies after f in Protected
}
pred __repair { idmtJfGYicfca7koBEr_prop11 }
check __repair { idmtJfGYicfca7koBEr_prop11 <=> prop11o }