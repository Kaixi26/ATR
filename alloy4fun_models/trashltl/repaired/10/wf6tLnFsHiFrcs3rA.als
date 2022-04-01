open main
pred idwf6tLnFsHiFrcs3rA_prop11 {
	all f : File + Trash | f not in Protected implies after f in Protected
}
pred __repair { idwf6tLnFsHiFrcs3rA_prop11 }
check __repair { idwf6tLnFsHiFrcs3rA_prop11 <=> prop11o }