open main
pred id7mis6JZ4bJmRkQoHs_prop4 {
	
	all t1,t2 : Train | always  no (t1.pos & t2.pos) 
}
pred __repair { id7mis6JZ4bJmRkQoHs_prop4 }
check __repair { id7mis6JZ4bJmRkQoHs_prop4 <=> prop4o }