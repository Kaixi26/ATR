open main
pred idwuBidrmMDkzb2PwXQ_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies   t.pos'= t.pos)
      	
    }
  	
}
pred __repair { idwuBidrmMDkzb2PwXQ_prop5 }
check __repair { idwuBidrmMDkzb2PwXQ_prop5 <=> prop5o }