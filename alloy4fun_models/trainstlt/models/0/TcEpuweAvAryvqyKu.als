open main
pred idTcEpuweAvAryvqyKu_prop1 {
	
	once (all t:Track | t.signal = Green implies (before t.signal != Green))
}
pred __repair { idTcEpuweAvAryvqyKu_prop1 }
check __repair { idTcEpuweAvAryvqyKu_prop1 <=> prop1o }