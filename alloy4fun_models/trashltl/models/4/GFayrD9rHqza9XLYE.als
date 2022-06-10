open main
pred idGFayrD9rHqza9XLYE_prop5 {
	always all f : File | File' = File - f
}
pred __repair { idGFayrD9rHqza9XLYE_prop5 }
check __repair { idGFayrD9rHqza9XLYE_prop5 <=> prop5o }