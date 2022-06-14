open main
pred iddiMn5pHonJP3y5ao2_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies no t.pos')
      	always (t.pos in Entry  implies  (t.pos'in  (t.pos.prox) )) 
    }
  	
}
pred __repair { iddiMn5pHonJP3y5ao2_prop5 }
check __repair { iddiMn5pHonJP3y5ao2_prop5 <=> prop5o }