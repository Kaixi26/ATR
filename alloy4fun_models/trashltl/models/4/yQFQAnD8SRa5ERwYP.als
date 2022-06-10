open main
pred idyQFQAnD8SRa5ERwYP_prop5 {
	some f:File | eventually File' = File - f
}
pred __repair { idyQFQAnD8SRa5ERwYP_prop5 }
check __repair { idyQFQAnD8SRa5ERwYP_prop5 <=> prop5o }