open main
pred idv7f5dzHqrGvmNr9Xj_prop9 {
	
	always ( all t:Train | eventually (no t.pos until t.pos in Entry))
}
pred __repair { idv7f5dzHqrGvmNr9Xj_prop9 }
check __repair { idv7f5dzHqrGvmNr9Xj_prop9 <=> prop9o }