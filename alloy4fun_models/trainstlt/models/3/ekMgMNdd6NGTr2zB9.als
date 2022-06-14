open main
pred idekMgMNdd6NGTr2zB9_prop4 {
	
	
  	always (all t1,t2 : Train | no (t1.pos & t2.pos)) 
}
pred __repair { idekMgMNdd6NGTr2zB9_prop4 }
check __repair { idekMgMNdd6NGTr2zB9_prop4 <=> prop4o }