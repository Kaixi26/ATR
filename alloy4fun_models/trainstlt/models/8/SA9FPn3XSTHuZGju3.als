open main
pred idSA9FPn3XSTHuZGju3_prop9 {
	
   always (all t:Train|  (no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { idSA9FPn3XSTHuZGju3_prop9 }
check __repair { idSA9FPn3XSTHuZGju3_prop9 <=> prop9o }