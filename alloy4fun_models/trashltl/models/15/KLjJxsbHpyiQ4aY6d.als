open main
pred idKLjJxsbHpyiQ4aY6d_prop16 {
	always (all f:File |  f in Protected implies f in  Protected'  )
}
pred __repair { idKLjJxsbHpyiQ4aY6d_prop16 }
check __repair { idKLjJxsbHpyiQ4aY6d_prop16 <=> prop16o }