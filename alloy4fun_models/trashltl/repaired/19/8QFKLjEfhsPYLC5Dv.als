open main
pred id8QFKLjEfhsPYLC5Dv_prop20 {
	always (all f:File | f in Trash since f in Protected)
}
pred __repair { id8QFKLjEfhsPYLC5Dv_prop20 }
check __repair { id8QFKLjEfhsPYLC5Dv_prop20 <=> prop20o }