open main
pred idBvCQrXAxJmTGpxhKa_prop5 {
	eventually (some f:File | f not in File)
}
pred __repair { idBvCQrXAxJmTGpxhKa_prop5 }
check __repair { idBvCQrXAxJmTGpxhKa_prop5 <=> prop5o }