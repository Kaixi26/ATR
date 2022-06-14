open main
pred id84W46nvDDaij3cdo2_prop9 {
	
     (all t:Train|  eventually (no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { id84W46nvDDaij3cdo2_prop9 }
check __repair { id84W46nvDDaij3cdo2_prop9 <=> prop9o }