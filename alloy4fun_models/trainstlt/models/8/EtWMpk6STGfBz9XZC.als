open main
pred idEtWMpk6STGfBz9XZC_prop9 {
	
   always  (all t:Train|  eventually (no t.pos => after one t.pos:>Entry) )
	 
}
pred __repair { idEtWMpk6STGfBz9XZC_prop9 }
check __repair { idEtWMpk6STGfBz9XZC_prop9 <=> prop9o }