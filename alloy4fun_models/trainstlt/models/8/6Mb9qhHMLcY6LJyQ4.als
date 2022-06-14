open main
pred id6Mb9qhHMLcY6LJyQ4_prop9 {
	
     (all t:Train|  eventually (no t.pos => after one t.pos:>Entry) )
	 
}
pred __repair { id6Mb9qhHMLcY6LJyQ4_prop9 }
check __repair { id6Mb9qhHMLcY6LJyQ4_prop9 <=> prop9o }