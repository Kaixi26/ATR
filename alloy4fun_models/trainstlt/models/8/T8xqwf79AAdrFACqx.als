open main
pred idT8xqwf79AAdrFACqx_prop9 {
	
     always(all t:Train|  eventually ( before no t.pos and after ( one t.pos:>Entry)) )
	 
}
pred __repair { idT8xqwf79AAdrFACqx_prop9 }
check __repair { idT8xqwf79AAdrFACqx_prop9 <=> prop9o }