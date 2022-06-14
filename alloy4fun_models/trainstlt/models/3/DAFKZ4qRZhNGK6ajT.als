open main
pred idDAFKZ4qRZhNGK6ajT_prop4 {
	
	all disj s1, s2 : Signal | always s1.pos != s2.pos
}
pred __repair { idDAFKZ4qRZhNGK6ajT_prop4 }
check __repair { idDAFKZ4qRZhNGK6ajT_prop4 <=> prop4o }