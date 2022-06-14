open main
pred idXPt62bRJn3qMNEQnt_prop6 {
	
	always (all s:Signal |  (s in Green implies eventually (no (s &  Green'))) or 
			no (s & Green) implies  eventually (some (s &  Green')))
}
pred __repair { idXPt62bRJn3qMNEQnt_prop6 }
check __repair { idXPt62bRJn3qMNEQnt_prop6 <=> prop6o }