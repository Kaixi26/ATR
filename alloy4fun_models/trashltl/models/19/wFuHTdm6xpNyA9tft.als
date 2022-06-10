open main
pred idwFuHTdm6xpNyA9tft_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { idwFuHTdm6xpNyA9tft_prop20 }
check __repair { idwFuHTdm6xpNyA9tft_prop20 <=> prop20o }