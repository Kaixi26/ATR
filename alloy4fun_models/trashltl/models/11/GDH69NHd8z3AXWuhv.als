open main
pred idGDH69NHd8z3AXWuhv_prop12 {
	some f : File | eventually f in Trash => always f in Trash
}
pred __repair { idGDH69NHd8z3AXWuhv_prop12 }
check __repair { idGDH69NHd8z3AXWuhv_prop12 <=> prop12o }