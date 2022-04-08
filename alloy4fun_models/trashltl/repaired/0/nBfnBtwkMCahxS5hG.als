open main
pred idnBfnBtwkMCahxS5hG_prop1 {
	all f:File | f in Protected
}
pred __repair { idnBfnBtwkMCahxS5hG_prop1 }
check __repair { idnBfnBtwkMCahxS5hG_prop1 <=> prop1o }