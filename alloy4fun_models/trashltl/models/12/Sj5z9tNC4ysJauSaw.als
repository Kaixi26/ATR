open main
pred idSj5z9tNC4ysJauSaw_prop13 {
	always all f : File | always f in Trash implies once f not in Trash
}
pred __repair { idSj5z9tNC4ysJauSaw_prop13 }
check __repair { idSj5z9tNC4ysJauSaw_prop13 <=> prop13o }