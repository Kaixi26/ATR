open main
pred idNvnj2pEy6ApHYggSa_prop12 {
	always all f:File | eventually f in Trash implies  f in Trash
}
pred __repair { idNvnj2pEy6ApHYggSa_prop12 }
check __repair { idNvnj2pEy6ApHYggSa_prop12 <=> prop12o }