open main
pred idXxJaNEgSWD4XsGny9_prop9 {
	
   (all t:Train|  (historically no t.pos and after one t.pos:>Entry))
	 
}
pred __repair { idXxJaNEgSWD4XsGny9_prop9 }
check __repair { idXxJaNEgSWD4XsGny9_prop9 <=> prop9o }