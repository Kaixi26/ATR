open main
pred idP6iALLEX6D9wXAyhF_prop10 {
	always all p : Protected | once p in Protected => p in Protected
}
pred __repair { idP6iALLEX6D9wXAyhF_prop10 }
check __repair { idP6iALLEX6D9wXAyhF_prop10 <=> prop10o }