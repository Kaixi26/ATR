open main
pred idoyiMPdMoxyAJrTsdm_prop9 {
	
   always  (all t:Train|  once(no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { idoyiMPdMoxyAJrTsdm_prop9 }
check __repair { idoyiMPdMoxyAJrTsdm_prop9 <=> prop9o }