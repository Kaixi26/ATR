open main
pred id7CHFsz9omauHhHQvR_prop18 {
	always(all f:Protected | f in Trash implies f not in Protected)
}
pred __repair { id7CHFsz9omauHhHQvR_prop18 }
check __repair { id7CHFsz9omauHhHQvR_prop18 <=> prop18o }