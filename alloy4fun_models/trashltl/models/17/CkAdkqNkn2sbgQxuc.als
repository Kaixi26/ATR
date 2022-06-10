open main
pred idCkAdkqNkn2sbgQxuc_prop18 {
	 all p:Protected | always p in File - Protected iff p'=Trash
}
pred __repair { idCkAdkqNkn2sbgQxuc_prop18 }
check __repair { idCkAdkqNkn2sbgQxuc_prop18 <=> prop18o }