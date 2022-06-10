open main
pred id557bzMwP6hzjLzjis_prop8 {
	all f1:File , f2:File | f1->f2 in link implies eventually f1 in Trash
}
pred __repair { id557bzMwP6hzjLzjis_prop8 }
check __repair { id557bzMwP6hzjLzjis_prop8 <=> prop8o }