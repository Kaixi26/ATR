open main
pred idN4Y9nuSNzbZwo2Lby_prop18 {
	always all p: Protected | always p not in Protected implies after p in Trash
}
pred __repair { idN4Y9nuSNzbZwo2Lby_prop18 }
check __repair { idN4Y9nuSNzbZwo2Lby_prop18 <=> prop18o }