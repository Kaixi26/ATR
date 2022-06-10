open main
pred idJuQ6ArYLBpt4CmjBe_prop5 {
	always some f : File | eventually f not in File 
}
pred __repair { idJuQ6ArYLBpt4CmjBe_prop5 }
check __repair { idJuQ6ArYLBpt4CmjBe_prop5 <=> prop5o }