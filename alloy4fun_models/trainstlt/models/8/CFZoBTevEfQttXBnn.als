open main
pred idCFZoBTevEfQttXBnn_prop9 {
	
	  (all t:Train | no t.pos implies  eventually (some (t.pos.prox & Entry ) and some t.pos and t.pos in Entry) )
}
pred __repair { idCFZoBTevEfQttXBnn_prop9 }
check __repair { idCFZoBTevEfQttXBnn_prop9 <=> prop9o }