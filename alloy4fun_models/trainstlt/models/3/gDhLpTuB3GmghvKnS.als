open main
pred idgDhLpTuB3GmghvKnS_prop4 {
	
	all disj t1,t2:Train | no (t1.pos & t2.pos)
}
pred __repair { idgDhLpTuB3GmghvKnS_prop4 }
check __repair { idgDhLpTuB3GmghvKnS_prop4 <=> prop4o }