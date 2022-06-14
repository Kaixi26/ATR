open main
pred idqzQjdCxexo5XwmBRo_prop4 {
	
	all disj t1,t2:Train | some (t1.pos &t2.pos ) implies lone ((t1.pos &t2.pos ).signal &Green)
}
pred __repair { idqzQjdCxexo5XwmBRo_prop4 }
check __repair { idqzQjdCxexo5XwmBRo_prop4 <=> prop4o }