open main
pred id92JHopC6rFy6quhiN_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  t.pos'= t.pos) 
      	
    }
  	
}
pred __repair { id92JHopC6rFy6quhiN_prop5 }
check __repair { id92JHopC6rFy6quhiN_prop5 <=> prop5o }