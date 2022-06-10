open main
pred idxehHKpnCGwwG3RgM7_prop14 {
	always some f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
}
pred __repair { idxehHKpnCGwwG3RgM7_prop14 }
check __repair { idxehHKpnCGwwG3RgM7_prop14 <=> prop14o }