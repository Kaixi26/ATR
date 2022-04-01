open main
pred idLaCE5F7heGMreE4s4_prop18 {
	always (all f:Protected | f in Trash-Protected triggered f in Protected)
}
pred __repair { idLaCE5F7heGMreE4s4_prop18 }
check __repair { idLaCE5F7heGMreE4s4_prop18 <=> prop18o }