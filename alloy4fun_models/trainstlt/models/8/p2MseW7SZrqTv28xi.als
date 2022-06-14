open main
pred idp2MseW7SZrqTv28xi_prop9 {
	
  always (all t:Train| eventually (some t.pos:>Entry ))
	 
}
pred __repair { idp2MseW7SZrqTv28xi_prop9 }
check __repair { idp2MseW7SZrqTv28xi_prop9 <=> prop9o }