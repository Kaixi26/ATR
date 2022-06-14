open main
pred idXqeSi3wZ6yZnmwN93_prop4 {
	
	all disj t1, t2 : Train | always t1.pos != t2.pos
}
pred __repair { idXqeSi3wZ6yZnmwN93_prop4 }
check __repair { idXqeSi3wZ6yZnmwN93_prop4 <=> prop4o }