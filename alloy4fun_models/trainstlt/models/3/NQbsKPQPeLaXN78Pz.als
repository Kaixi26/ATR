open main
pred idNQbsKPQPeLaXN78Pz_prop4 {
	
	always all disj t1, t2 : Train | t1.pos != t2.pos
}
pred __repair { idNQbsKPQPeLaXN78Pz_prop4 }
check __repair { idNQbsKPQPeLaXN78Pz_prop4 <=> prop4o }