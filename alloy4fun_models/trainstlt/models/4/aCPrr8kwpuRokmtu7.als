open main
pred idaCPrr8kwpuRokmtu7_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  no t.pos') 
      	
    }
  	
}
pred __repair { idaCPrr8kwpuRokmtu7_prop5 }
check __repair { idaCPrr8kwpuRokmtu7_prop5 <=> prop5o }