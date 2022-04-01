open main
pred idJwMnPXzZLEpfEzXb6_prop20 {
	always all f : File | always f not in Protected since once f in Trash
}
pred __repair { idJwMnPXzZLEpfEzXb6_prop20 }
check __repair { idJwMnPXzZLEpfEzXb6_prop20 <=> prop20o }