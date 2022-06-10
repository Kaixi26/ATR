open main
pred id8LYeRyQSK2TykKhSb_prop8 {
	always all f : File | eventually f in Trash
}
pred __repair { id8LYeRyQSK2TykKhSb_prop8 }
check __repair { id8LYeRyQSK2TykKhSb_prop8 <=> prop8o }