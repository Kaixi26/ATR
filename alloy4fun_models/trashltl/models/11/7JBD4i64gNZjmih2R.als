open main
pred id7JBD4i64gNZjmih2R_prop12 {
	all f : File | eventually f in Trash => after eventually f not in Trash
}
pred __repair { id7JBD4i64gNZjmih2R_prop12 }
check __repair { id7JBD4i64gNZjmih2R_prop12 <=> prop12o }