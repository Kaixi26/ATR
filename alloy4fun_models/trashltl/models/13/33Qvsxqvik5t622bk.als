open main
pred id33Qvsxqvik5t622bk_prop14 {
	always some f : File | (f in Protected & Trash) implies (f not in Protected')
}
pred __repair { id33Qvsxqvik5t622bk_prop14 }
check __repair { id33Qvsxqvik5t622bk_prop14 <=> prop14o }