open main
pred idcrdejFY7JqAcKT9DF_prop14 {
	all f : File | f in Trash and f in Protected implies f not in Protected 
}
pred __repair { idcrdejFY7JqAcKT9DF_prop14 }
check __repair { idcrdejFY7JqAcKT9DF_prop14 <=> prop14o }