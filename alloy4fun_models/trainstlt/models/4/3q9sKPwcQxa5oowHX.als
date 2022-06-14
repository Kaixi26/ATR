open main
pred id3q9sKPwcQxa5oowHX_prop5 {
	
  	always all t: Train | (t'.pos in t.prox) or (t.pos in Exit implies Train' = Train -t)
}
pred __repair { id3q9sKPwcQxa5oowHX_prop5 }
check __repair { id3q9sKPwcQxa5oowHX_prop5 <=> prop5o }