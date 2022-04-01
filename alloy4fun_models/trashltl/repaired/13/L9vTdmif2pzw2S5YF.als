open main
pred idL9vTdmif2pzw2S5YF_prop14 {
	after (all f:Protected | f in Trash implies f not in Protected)
}
pred __repair { idL9vTdmif2pzw2S5YF_prop14 }
check __repair { idL9vTdmif2pzw2S5YF_prop14 <=> prop14o }