open main
pred idqga5L77ZmeF6P8FKs_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  no t.pos')
      	
      
    }
  	
}
pred __repair { idqga5L77ZmeF6P8FKs_prop5 }
check __repair { idqga5L77ZmeF6P8FKs_prop5 <=> prop5o }