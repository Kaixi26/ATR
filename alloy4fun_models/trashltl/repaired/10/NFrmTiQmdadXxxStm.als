open main
pred idNFrmTiQmdadXxxStm_prop11 {
	
	all f : File | f not in Protected implies f in Protected'
}
pred __repair { idNFrmTiQmdadXxxStm_prop11 }
check __repair { idNFrmTiQmdadXxxStm_prop11 <=> prop11o }