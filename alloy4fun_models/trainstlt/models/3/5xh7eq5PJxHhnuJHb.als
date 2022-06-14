open main
pred id5xh7eq5PJxHhnuJHb_prop4 {
	
  	always all t1, t2: Train | always lone tr1: Track | always (no t1.pos & t2.pos)
}
pred __repair { id5xh7eq5PJxHhnuJHb_prop4 }
check __repair { id5xh7eq5PJxHhnuJHb_prop4 <=> prop4o }