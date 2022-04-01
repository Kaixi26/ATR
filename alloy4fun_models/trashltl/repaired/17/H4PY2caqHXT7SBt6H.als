open main
pred idH4PY2caqHXT7SBt6H_prop18 {
	 always all p:Protected | p in Trash implies after p not in Protected
}
pred __repair { idH4PY2caqHXT7SBt6H_prop18 }
check __repair { idH4PY2caqHXT7SBt6H_prop18 <=> prop18o }