open main
pred idKDmYKRCnoxSt5QptB_prop8 {
	all f,g: File| f->g in link implies eventually f in Trash
}
pred __repair { idKDmYKRCnoxSt5QptB_prop8 }
check __repair { idKDmYKRCnoxSt5QptB_prop8 <=> prop8o }