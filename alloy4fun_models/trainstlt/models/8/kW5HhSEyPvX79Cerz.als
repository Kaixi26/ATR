open main
pred idkW5HhSEyPvX79Cerz_prop9 {
	
	 always (all t:Train |some (t.pos.prox & Entry )implies  eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { idkW5HhSEyPvX79Cerz_prop9 }
check __repair { idkW5HhSEyPvX79Cerz_prop9 <=> prop9o }