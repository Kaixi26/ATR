open main
pred idKKriWhMCsYjTwXeRz_prop9 {
	
     (all t:Train|  eventually ( no t.pos and after ( one t.pos:>Entry)) )
	 
}
pred __repair { idKKriWhMCsYjTwXeRz_prop9 }
check __repair { idKKriWhMCsYjTwXeRz_prop9 <=> prop9o }