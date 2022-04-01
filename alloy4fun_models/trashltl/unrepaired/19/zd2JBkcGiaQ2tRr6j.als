open main
pred idzd2JBkcGiaQ2tRr6j_prop20 {
	always all t: File | t in Trash since t in Protected
}
pred __repair { idzd2JBkcGiaQ2tRr6j_prop20 }
check __repair { idzd2JBkcGiaQ2tRr6j_prop20 <=> prop20o }