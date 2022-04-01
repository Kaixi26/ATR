open main
pred idWnvMoLtHeKBAowFST_prop10 {
	always all p:Protected | always p in Protected
}
pred __repair { idWnvMoLtHeKBAowFST_prop10 }
check __repair { idWnvMoLtHeKBAowFST_prop10 <=> prop10o }