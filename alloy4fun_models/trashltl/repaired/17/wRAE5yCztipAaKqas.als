open main
pred idwRAE5yCztipAaKqas_prop18 {
	always all p:Protected | p in File - Protected implies after p in Trash
}
pred __repair { idwRAE5yCztipAaKqas_prop18 }
check __repair { idwRAE5yCztipAaKqas_prop18 <=> prop18o }