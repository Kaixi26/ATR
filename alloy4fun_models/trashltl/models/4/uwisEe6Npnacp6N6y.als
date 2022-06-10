open main
pred iduwisEe6Npnacp6N6y_prop5 {
  	always some f: File | eventually f not in File
}
pred __repair { iduwisEe6Npnacp6N6y_prop5 }
check __repair { iduwisEe6Npnacp6N6y_prop5 <=> prop5o }