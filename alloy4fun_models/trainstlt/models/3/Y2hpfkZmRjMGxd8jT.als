open main
pred idY2hpfkZmRjMGxd8jT_prop4 {
	
	all t1,t2 : Train | always  no (t1.pos & t2.pos) 
}
pred __repair { idY2hpfkZmRjMGxd8jT_prop4 }
check __repair { idY2hpfkZmRjMGxd8jT_prop4 <=> prop4o }