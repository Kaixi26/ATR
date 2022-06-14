open main
pred idBkt24rAPK7ZZAYoNj_prop4 {
	
	always all disj t, t2 : Train | t.pos != t2.pos
}
pred __repair { idBkt24rAPK7ZZAYoNj_prop4 }
check __repair { idBkt24rAPK7ZZAYoNj_prop4 <=> prop4o }