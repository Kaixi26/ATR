open main
pred idzEzT5f72uzYudEzyu_prop18 {
	always all p:Protected | p in File - Protected iff after p in Trash
}
pred __repair { idzEzT5f72uzYudEzyu_prop18 }
check __repair { idzEzT5f72uzYudEzyu_prop18 <=> prop18o }