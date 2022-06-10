open main
pred idZXmB8Q9qwwERJwvqZ_prop18 {
	 all p:Protected | always p in File - Protected iff after p in Trash
}
pred __repair { idZXmB8Q9qwwERJwvqZ_prop18 }
check __repair { idZXmB8Q9qwwERJwvqZ_prop18 <=> prop18o }