open main
pred idLshfhcsLwFFv5ZTLC_prop10 {
	always all p:Protected | p in Protected implies after always p in Protected
}
pred __repair { idLshfhcsLwFFv5ZTLC_prop10 }
check __repair { idLshfhcsLwFFv5ZTLC_prop10 <=> prop10o }