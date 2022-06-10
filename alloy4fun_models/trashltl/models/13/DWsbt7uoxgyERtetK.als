open main
pred idDWsbt7uoxgyERtetK_prop14 {
	all f : Trash | always (after f not in Protected) 
}
pred __repair { idDWsbt7uoxgyERtetK_prop14 }
check __repair { idDWsbt7uoxgyERtetK_prop14 <=> prop14o }