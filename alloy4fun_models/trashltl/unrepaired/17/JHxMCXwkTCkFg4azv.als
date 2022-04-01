open main
pred idJHxMCXwkTCkFg4azv_prop18 {
	always all f: File | f in Protected and f in Trash releases always f not in Protected
}
pred __repair { idJHxMCXwkTCkFg4azv_prop18 }
check __repair { idJHxMCXwkTCkFg4azv_prop18 <=> prop18o }