open main
pred idMXdSNPLWtJ6RjAN9z_prop13 {
	all f: File | f not in Trash until f in Trash
}
pred __repair { idMXdSNPLWtJ6RjAN9z_prop13 }
check __repair { idMXdSNPLWtJ6RjAN9z_prop13 <=> prop13o }