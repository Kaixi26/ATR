open main
pred idFES87JgL2is3ogvsk_prop10 {
	always all p:Protected | always p in Protected
}
pred __repair { idFES87JgL2is3ogvsk_prop10 }
check __repair { idFES87JgL2is3ogvsk_prop10 <=> prop10o }