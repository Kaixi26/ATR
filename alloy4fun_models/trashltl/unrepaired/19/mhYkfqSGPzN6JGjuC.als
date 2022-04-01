open main
pred idmhYkfqSGPzN6JGjuC_prop20 {
	always all f : File | always f not in Protected since f in Trash
}
pred __repair { idmhYkfqSGPzN6JGjuC_prop20 }
check __repair { idmhYkfqSGPzN6JGjuC_prop20 <=> prop20o }