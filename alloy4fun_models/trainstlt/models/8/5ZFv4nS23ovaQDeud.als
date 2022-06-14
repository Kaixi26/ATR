open main
pred id5ZFv4nS23ovaQDeud_prop9 {
	
   always  (all t:Train|  once(no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { id5ZFv4nS23ovaQDeud_prop9 }
check __repair { id5ZFv4nS23ovaQDeud_prop9 <=> prop9o }