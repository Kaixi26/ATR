open main
pred id8hQfq34bpEvym6gFS_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies   t.pos'=t.pos)
      	
    }
  	
}
pred __repair { id8hQfq34bpEvym6gFS_prop5 }
check __repair { id8hQfq34bpEvym6gFS_prop5 <=> prop5o }