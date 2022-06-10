open main
pred idwbwF4otQQ5YCPe5cc_prop8 {
	all f: File| f in link.File implies eventually f in Trash
}
pred __repair { idwbwF4otQQ5YCPe5cc_prop8 }
check __repair { idwbwF4otQQ5YCPe5cc_prop8 <=> prop8o }