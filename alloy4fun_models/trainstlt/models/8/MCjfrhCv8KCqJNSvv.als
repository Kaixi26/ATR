open main
pred idMCjfrhCv8KCqJNSvv_prop9 {
	
     (all t:Train|  eventually ( one t.pos:>Entry) )
	 
}
pred __repair { idMCjfrhCv8KCqJNSvv_prop9 }
check __repair { idMCjfrhCv8KCqJNSvv_prop9 <=> prop9o }