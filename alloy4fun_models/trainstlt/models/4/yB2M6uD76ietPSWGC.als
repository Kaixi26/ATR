open main
pred idyB2M6uD76ietPSWGC_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  t.pos'= t.pos)
      	
    }
  	
}
pred __repair { idyB2M6uD76ietPSWGC_prop5 }
check __repair { idyB2M6uD76ietPSWGC_prop5 <=> prop5o }