open main
pred idGydmgYxAWkrCnuudb_prop9 {
	
   (all t:Train| eventually (historically no t.pos and after one t.pos:>Entry))
	 
}
pred __repair { idGydmgYxAWkrCnuudb_prop9 }
check __repair { idGydmgYxAWkrCnuudb_prop9 <=> prop9o }