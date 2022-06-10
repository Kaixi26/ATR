open main
pred idAf78pwPzAGiMmuD9N_prop18 {
	always all p : Protected | p not in Protected since p in Trash
}
pred __repair { idAf78pwPzAGiMmuD9N_prop18 }
check __repair { idAf78pwPzAGiMmuD9N_prop18 <=> prop18o }