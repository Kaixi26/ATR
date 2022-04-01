open main
pred iddvYsgwWpcLuWw2yex_prop13 {
	all f: File | always f not in Trash until f in Trash
}
pred __repair { iddvYsgwWpcLuWw2yex_prop13 }
check __repair { iddvYsgwWpcLuWw2yex_prop13 <=> prop13o }