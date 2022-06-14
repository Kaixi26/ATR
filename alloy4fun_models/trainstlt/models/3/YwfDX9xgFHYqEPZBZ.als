open main
pred idYwfDX9xgFHYqEPZBZ_prop4 {
	
	always (all t1,t2:Train | t1.pos != t2.pos)
}
pred __repair { idYwfDX9xgFHYqEPZBZ_prop4 }
check __repair { idYwfDX9xgFHYqEPZBZ_prop4 <=> prop4o }