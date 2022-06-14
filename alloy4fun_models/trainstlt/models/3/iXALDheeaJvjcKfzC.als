open main
pred idiXALDheeaJvjcKfzC_prop4 {
	
	all t1, t2 : Train | always t1.pos != t2.pos
}
pred __repair { idiXALDheeaJvjcKfzC_prop4 }
check __repair { idiXALDheeaJvjcKfzC_prop4 <=> prop4o }