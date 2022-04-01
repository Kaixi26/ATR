open main
pred idGvgH7K9hhKMDaDW7W_prop8 {
	all f1:File , f2:File | f1.link = f2 implies eventually f2 +f1 in Trash
}
pred __repair { idGvgH7K9hhKMDaDW7W_prop8 }
check __repair { idGvgH7K9hhKMDaDW7W_prop8 <=> prop8o }