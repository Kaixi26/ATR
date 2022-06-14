open main
pred idFRdnH8gaBG6fT4M9D_prop9 {
	
  always (all t:Train| eventually ( one t.pos:>Entry))
	 
}
pred __repair { idFRdnH8gaBG6fT4M9D_prop9 }
check __repair { idFRdnH8gaBG6fT4M9D_prop9 <=> prop9o }