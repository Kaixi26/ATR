open main
pred idWcb4MKT6YJCsWyNod_prop5 {
	some t: Trash | eventually (t not in File)
}
pred __repair { idWcb4MKT6YJCsWyNod_prop5 }
check __repair { idWcb4MKT6YJCsWyNod_prop5 <=> prop5o }