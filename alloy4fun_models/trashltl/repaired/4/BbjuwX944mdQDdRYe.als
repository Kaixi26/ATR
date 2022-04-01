open main
pred idBbjuwX944mdQDdRYe_prop5 {
	always all f : File | eventually File' = File - f
}
pred __repair { idBbjuwX944mdQDdRYe_prop5 }
check __repair { idBbjuwX944mdQDdRYe_prop5 <=> prop5o }