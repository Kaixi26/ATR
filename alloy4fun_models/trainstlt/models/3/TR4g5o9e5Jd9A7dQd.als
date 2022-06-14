open main
pred idTR4g5o9e5Jd9A7dQd_prop4 {
	
  	always all t1, t2: Train | lone tr1: Track | always (t1.pos in tr1 and t2.pos in tr1 implies t1=t2)
}
pred __repair { idTR4g5o9e5Jd9A7dQd_prop4 }
check __repair { idTR4g5o9e5Jd9A7dQd_prop4 <=> prop4o }