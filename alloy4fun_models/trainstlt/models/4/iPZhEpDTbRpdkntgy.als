open main
pred idiPZhEpDTbRpdkntgy_prop5 {
	
  always all t : Train | some t1 : Track | t.pos = t1 implies after t.pos in (t1.prox + t1) 
}
pred __repair { idiPZhEpDTbRpdkntgy_prop5 }
check __repair { idiPZhEpDTbRpdkntgy_prop5 <=> prop5o }