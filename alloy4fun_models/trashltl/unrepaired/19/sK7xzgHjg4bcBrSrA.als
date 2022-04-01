open main
pred idsK7xzgHjg4bcBrSrA_prop20 {
	always all f : File | always f not in Protected since f in Trash  
}
pred __repair { idsK7xzgHjg4bcBrSrA_prop20 }
check __repair { idsK7xzgHjg4bcBrSrA_prop20 <=> prop20o }