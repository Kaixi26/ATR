open main
pred idmJkG64KYSzoqNjFuC_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos.prox')
    
  }
}
pred __repair { idmJkG64KYSzoqNjFuC_prop5 }
check __repair { idmJkG64KYSzoqNjFuC_prop5 <=> prop5o }