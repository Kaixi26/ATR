open main
pred idr6D4hxWPrRoJqzK7H_prop5 {
	some f : Trash | eventually f not in (File + Protected + Trash)
}
pred __repair { idr6D4hxWPrRoJqzK7H_prop5 }
check __repair { idr6D4hxWPrRoJqzK7H_prop5 <=> prop5o }