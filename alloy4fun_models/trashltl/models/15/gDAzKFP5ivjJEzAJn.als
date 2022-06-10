open main
pred idgDAzKFP5ivjJEzAJn_prop16 {
	 all f : File | f in Protected implies (historically f in Protected)
}
pred __repair { idgDAzKFP5ivjJEzAJn_prop16 }
check __repair { idgDAzKFP5ivjJEzAJn_prop16 <=> prop16o }