open main
pred idv6LDLNzgq8vK2g8xp_prop18 {
	always all p: Protected | p not in Protected implies before p in Trash
}
pred __repair { idv6LDLNzgq8vK2g8xp_prop18 }
check __repair { idv6LDLNzgq8vK2g8xp_prop18 <=> prop18o }