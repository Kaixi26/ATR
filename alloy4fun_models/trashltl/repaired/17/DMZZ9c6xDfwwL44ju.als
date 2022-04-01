open main
pred idDMZZ9c6xDfwwL44ju_prop18 {
	always all f : Protected | f not in Protected releases f in Trash
}
pred __repair { idDMZZ9c6xDfwwL44ju_prop18 }
check __repair { idDMZZ9c6xDfwwL44ju_prop18 <=> prop18o }