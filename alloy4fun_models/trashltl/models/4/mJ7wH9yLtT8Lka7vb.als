open main
pred idmJ7wH9yLtT8Lka7vb_prop5 {
	some f:File | eventually File' = File - f
}
pred __repair { idmJ7wH9yLtT8Lka7vb_prop5 }
check __repair { idmJ7wH9yLtT8Lka7vb_prop5 <=> prop5o }