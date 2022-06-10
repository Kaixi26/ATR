open main
pred idPwYhpcDmrKKTxcj6v_prop18 {
	always all f: File | f in Protected and f in Trash implies always f not in Protected
}
pred __repair { idPwYhpcDmrKKTxcj6v_prop18 }
check __repair { idPwYhpcDmrKKTxcj6v_prop18 <=> prop18o }