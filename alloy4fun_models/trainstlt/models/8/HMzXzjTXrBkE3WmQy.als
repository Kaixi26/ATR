open main
pred idHMzXzjTXrBkE3WmQy_prop9 {
	
	all t : Train | eventually t.pos = Entry
}
pred __repair { idHMzXzjTXrBkE3WmQy_prop9 }
check __repair { idHMzXzjTXrBkE3WmQy_prop9 <=> prop9o }