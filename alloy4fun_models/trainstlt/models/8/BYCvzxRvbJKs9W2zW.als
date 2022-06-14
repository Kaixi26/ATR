open main
pred idBYCvzxRvbJKs9W2zW_prop9 {
	
     (all t:Train|  eventually always  ( no t.pos and after ( one t.pos:>Entry)) )
	 
}
pred __repair { idBYCvzxRvbJKs9W2zW_prop9 }
check __repair { idBYCvzxRvbJKs9W2zW_prop9 <=> prop9o }