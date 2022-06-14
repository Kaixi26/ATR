open main
pred idKAPpdFmC7saNjkt3D_prop9 {
	
	  (all t:Train |    eventually (some (t.pos.prox & Entry ) and some t.pos and t.pos in Entry) )
}
pred __repair { idKAPpdFmC7saNjkt3D_prop9 }
check __repair { idKAPpdFmC7saNjkt3D_prop9 <=> prop9o }