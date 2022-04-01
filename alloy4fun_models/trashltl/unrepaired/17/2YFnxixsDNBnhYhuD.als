open main
pred id2YFnxixsDNBnhYhuD_prop18 {
	always(all f : (File & Trash) | always ( f not in Protected))
}
pred __repair { id2YFnxixsDNBnhYhuD_prop18 }
check __repair { id2YFnxixsDNBnhYhuD_prop18 <=> prop18o }