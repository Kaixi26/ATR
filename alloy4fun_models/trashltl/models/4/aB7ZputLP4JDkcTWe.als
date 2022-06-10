open main
pred idaB7ZputLP4JDkcTWe_prop5 {
	some f : File | eventually f not in File
}
pred __repair { idaB7ZputLP4JDkcTWe_prop5 }
check __repair { idaB7ZputLP4JDkcTWe_prop5 <=> prop5o }