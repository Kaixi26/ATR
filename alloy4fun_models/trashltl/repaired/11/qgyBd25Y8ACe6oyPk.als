open main
pred idqgyBd25Y8ACe6oyPk_prop12 {
	always all f : File | eventually f in Trash => always f in Trash
}
pred __repair { idqgyBd25Y8ACe6oyPk_prop12 }
check __repair { idqgyBd25Y8ACe6oyPk_prop12 <=> prop12o }