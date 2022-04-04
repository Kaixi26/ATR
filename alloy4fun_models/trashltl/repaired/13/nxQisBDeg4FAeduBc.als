open main
pred idnxQisBDeg4FAeduBc_prop14 {
	always all f : File | f in Trash implies after f not in Protected
}
pred __repair { idnxQisBDeg4FAeduBc_prop14 }
check __repair { idnxQisBDeg4FAeduBc_prop14 <=> prop14o }