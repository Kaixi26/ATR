open main
pred idRLZacfACSNZwxMkxN_prop10 {
	always all f : File | f in Protected since f in Protected
}
pred __repair { idRLZacfACSNZwxMkxN_prop10 }
check __repair { idRLZacfACSNZwxMkxN_prop10 <=> prop10o }