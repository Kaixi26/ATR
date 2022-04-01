open main
pred idNsppY3vXdgfgDKvgg_prop18 {
	always all p: Protected |always p in Trash releases p not in Protected
}
pred __repair { idNsppY3vXdgfgDKvgg_prop18 }
check __repair { idNsppY3vXdgfgDKvgg_prop18 <=> prop18o }