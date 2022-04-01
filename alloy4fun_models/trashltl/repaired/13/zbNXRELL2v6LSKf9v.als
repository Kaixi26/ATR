open main
pred idzbNXRELL2v6LSKf9v_prop14 {
	always all f:Trash | f in Protected and f not in Protected'
}
pred __repair { idzbNXRELL2v6LSKf9v_prop14 }
check __repair { idzbNXRELL2v6LSKf9v_prop14 <=> prop14o }