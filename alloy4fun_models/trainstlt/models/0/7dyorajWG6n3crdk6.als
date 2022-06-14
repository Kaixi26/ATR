open main
pred id7dyorajWG6n3crdk6_prop1 {
	
	all t:Track | always (Green not in t.signal until (Green in t.signal))
}
pred __repair { id7dyorajWG6n3crdk6_prop1 }
check __repair { id7dyorajWG6n3crdk6_prop1 <=> prop1o }