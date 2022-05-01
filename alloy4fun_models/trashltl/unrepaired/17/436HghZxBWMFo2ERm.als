open main
pred id436HghZxBWMFo2ERm_prop18 {
	all p: Protected | always p not in Protected implies p in Trash
}
pred __repair { id436HghZxBWMFo2ERm_prop18 }
check __repair { id436HghZxBWMFo2ERm_prop18 <=> prop18o }