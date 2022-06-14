open main
pred idkcNwu65HDYvAGcLZC_prop9 {
	
  always (all t:Train| eventually ( one t.pos':>Entry))
	 
}
pred __repair { idkcNwu65HDYvAGcLZC_prop9 }
check __repair { idkcNwu65HDYvAGcLZC_prop9 <=> prop9o }