open main
pred idWeEGLxrevpKie8Rkb_prop5 {
	
  always all t: Train | t.pos not in Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { idWeEGLxrevpKie8Rkb_prop5 }
check __repair { idWeEGLxrevpKie8Rkb_prop5 <=> prop5o }