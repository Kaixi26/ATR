open main
pred idDkazuGYBFEmFiPwF9_prop5 {
	some f : File | eventually f not in File 
}
pred __repair { idDkazuGYBFEmFiPwF9_prop5 }
check __repair { idDkazuGYBFEmFiPwF9_prop5 <=> prop5o }