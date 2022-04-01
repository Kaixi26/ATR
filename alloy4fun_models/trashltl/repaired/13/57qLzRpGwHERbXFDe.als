open main
pred id57qLzRpGwHERbXFDe_prop14 {
	all f : Protected | f in Trash implies after f not in Protected 
}
pred __repair { id57qLzRpGwHERbXFDe_prop14 }
check __repair { id57qLzRpGwHERbXFDe_prop14 <=> prop14o }