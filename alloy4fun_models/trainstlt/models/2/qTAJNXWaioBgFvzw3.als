open main
pred idqTAJNXWaioBgFvzw3_prop3 {
	
	always( no t:Track | t in t.prox)
}
pred __repair { idqTAJNXWaioBgFvzw3_prop3 }
check __repair { idqTAJNXWaioBgFvzw3_prop3 <=> prop3o }