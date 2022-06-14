open main
pred idrfD6Sg9xe9nJrjX6R_prop4 {
	
	all disj t1,t2:Train | no (t1.pos &t2.pos)
}
pred __repair { idrfD6Sg9xe9nJrjX6R_prop4 }
check __repair { idrfD6Sg9xe9nJrjX6R_prop4 <=> prop4o }