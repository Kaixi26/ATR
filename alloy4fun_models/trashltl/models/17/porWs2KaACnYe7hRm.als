open main
pred idporWs2KaACnYe7hRm_prop18 {
	always all f : Protected | f in Trash implies after f not in Protected
}
pred __repair { idporWs2KaACnYe7hRm_prop18 }
check __repair { idporWs2KaACnYe7hRm_prop18 <=> prop18o }