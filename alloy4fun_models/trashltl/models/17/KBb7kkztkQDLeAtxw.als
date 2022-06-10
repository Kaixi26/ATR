open main
pred idKBb7kkztkQDLeAtxw_prop18 {
	always(all f:Protected | f in Trash implies always f not in Protected)
}
pred __repair { idKBb7kkztkQDLeAtxw_prop18 }
check __repair { idKBb7kkztkQDLeAtxw_prop18 <=> prop18o }