open main
pred idndfWpGRKNLedPt2A2_prop9 {
	
     always(all t:Train|  eventually ( no t.pos and after ( one t.pos:>Entry)) )
	 
}
pred __repair { idndfWpGRKNLedPt2A2_prop9 }
check __repair { idndfWpGRKNLedPt2A2_prop9 <=> prop9o }