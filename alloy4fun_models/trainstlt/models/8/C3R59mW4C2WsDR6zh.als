open main
pred idC3R59mW4C2WsDR6zh_prop9 {
	
    always (all t:Train| eventually (no t.pos =>  one (t.pos':>Entry)) )
	 
}
pred __repair { idC3R59mW4C2WsDR6zh_prop9 }
check __repair { idC3R59mW4C2WsDR6zh_prop9 <=> prop9o }