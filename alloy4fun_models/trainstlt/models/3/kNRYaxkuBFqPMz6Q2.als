open main
pred idkNRYaxkuBFqPMz6Q2_prop4 {
	
	all t1,t2 : Train | always ( no (t1.pos & t2.pos) and t1.prox not in t2.pos)
}
pred __repair { idkNRYaxkuBFqPMz6Q2_prop4 }
check __repair { idkNRYaxkuBFqPMz6Q2_prop4 <=> prop4o }