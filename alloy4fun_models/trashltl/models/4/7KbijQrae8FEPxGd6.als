open main
pred id7KbijQrae8FEPxGd6_prop5 {
 	all f : File | always f in Trash => eventually f not in File
}
pred __repair { id7KbijQrae8FEPxGd6_prop5 }
check __repair { id7KbijQrae8FEPxGd6_prop5 <=> prop5o }