open main
pred id2RD3BKdMPMoPjw2vQ_prop9 {
	
	 ( all t:Train |no t.pos implies  eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { id2RD3BKdMPMoPjw2vQ_prop9 }
check __repair { id2RD3BKdMPMoPjw2vQ_prop9 <=> prop9o }