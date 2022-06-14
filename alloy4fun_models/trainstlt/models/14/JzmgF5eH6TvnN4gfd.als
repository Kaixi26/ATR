open main
pred idJzmgF5eH6TvnN4gfd_prop15 {
	
	all t : Train | (some t.pos) implies (eventually t.pos != t.pos')
}
pred __repair { idJzmgF5eH6TvnN4gfd_prop15 }
check __repair { idJzmgF5eH6TvnN4gfd_prop15 <=> prop15o }