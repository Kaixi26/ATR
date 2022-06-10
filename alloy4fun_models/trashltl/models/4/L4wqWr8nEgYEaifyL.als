open main
pred idL4wqWr8nEgYEaifyL_prop5 {
	eventually some f:File | eventually File' = File - f
}
pred __repair { idL4wqWr8nEgYEaifyL_prop5 }
check __repair { idL4wqWr8nEgYEaifyL_prop5 <=> prop5o }