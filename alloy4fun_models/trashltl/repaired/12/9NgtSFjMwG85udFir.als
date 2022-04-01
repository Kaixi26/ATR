open main
pred id9NgtSFjMwG85udFir_prop13 {
	some f : File | eventually f in Trash => once f not in Trash
}
pred __repair { id9NgtSFjMwG85udFir_prop13 }
check __repair { id9NgtSFjMwG85udFir_prop13 <=> prop13o }