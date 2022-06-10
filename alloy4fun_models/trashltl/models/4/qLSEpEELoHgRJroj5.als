open main
pred idqLSEpEELoHgRJroj5_prop5 {
	some f:File | eventually File' = File-f
}
pred __repair { idqLSEpEELoHgRJroj5_prop5 }
check __repair { idqLSEpEELoHgRJroj5_prop5 <=> prop5o }