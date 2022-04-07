open main
pred idZvYvuR65ittRFo7dJ_prop14 {
	always ((some Protected & Trash) implies Protected & Trash not in Protected')
}
pred __repair { idZvYvuR65ittRFo7dJ_prop14 }
check __repair { idZvYvuR65ittRFo7dJ_prop14 <=> prop14o }