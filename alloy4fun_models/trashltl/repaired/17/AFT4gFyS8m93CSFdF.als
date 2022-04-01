open main
pred idAFT4gFyS8m93CSFdF_prop18 {
	always all p:Protected | p in File - Protected implies p in Trash
}
pred __repair { idAFT4gFyS8m93CSFdF_prop18 }
check __repair { idAFT4gFyS8m93CSFdF_prop18 <=> prop18o }