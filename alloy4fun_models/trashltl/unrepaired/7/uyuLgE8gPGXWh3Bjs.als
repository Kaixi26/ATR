open main
pred iduyuLgE8gPGXWh3Bjs_prop8 {
	always(all f1, f2 : File | (f1 -> f2) in link implies eventually (f1 in Trash and f2 in Trash))
}
pred __repair { iduyuLgE8gPGXWh3Bjs_prop8 }
check __repair { iduyuLgE8gPGXWh3Bjs_prop8 <=> prop8o }