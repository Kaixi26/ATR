open main
pred idQDPhwLrY95a6cP6X7_prop5 {
	always all f : File | eventually f not in File 
}
pred __repair { idQDPhwLrY95a6cP6X7_prop5 }
check __repair { idQDPhwLrY95a6cP6X7_prop5 <=> prop5o }