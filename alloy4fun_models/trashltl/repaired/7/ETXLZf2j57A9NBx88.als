open main
pred idETXLZf2j57A9NBx88_prop8 {
	all f1,f2:File | f1->f2 in link implies eventually f1 in Trash
}
pred __repair { idETXLZf2j57A9NBx88_prop8 }
check __repair { idETXLZf2j57A9NBx88_prop8 <=> prop8o }