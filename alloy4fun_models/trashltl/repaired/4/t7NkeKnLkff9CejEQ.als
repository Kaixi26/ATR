open main
pred idt7NkeKnLkff9CejEQ_prop5 {
	some f:File | eventually no f&File
}
pred __repair { idt7NkeKnLkff9CejEQ_prop5 }
check __repair { idt7NkeKnLkff9CejEQ_prop5 <=> prop5o }