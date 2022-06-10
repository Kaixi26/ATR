open main
pred idjMc9tuhEZHeKZWdnB_prop16 {
	always (all f:File | f in Protected implies f in   Protected')
}
pred __repair { idjMc9tuhEZHeKZWdnB_prop16 }
check __repair { idjMc9tuhEZHeKZWdnB_prop16 <=> prop16o }