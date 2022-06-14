open main
pred idnvEgFBXyARLBcGzZT_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  t.pos'= t.pos)
      	
    }
  	
}
pred __repair { idnvEgFBXyARLBcGzZT_prop5 }
check __repair { idnvEgFBXyARLBcGzZT_prop5 <=> prop5o }