open main
pred idignNfNEE2FRjnoHvp_prop9 {
	
  eventually  always (all t:Train|  (no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { idignNfNEE2FRjnoHvp_prop9 }
check __repair { idignNfNEE2FRjnoHvp_prop9 <=> prop9o }