open main
pred idySHGhXpZbSEjGvLZW_prop9 {
  	always Protected not in Trash
	always all p:Protected | p not in Trash
}
pred __repair { idySHGhXpZbSEjGvLZW_prop9 }
check __repair { idySHGhXpZbSEjGvLZW_prop9 <=> prop9o }