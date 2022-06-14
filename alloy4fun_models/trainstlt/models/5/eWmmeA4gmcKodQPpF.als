open main
pred ideWmmeA4gmcKodQPpF_prop6 {
	
	always (all s:Signal | always (s in Green) implies eventually (no (s &  Green'))  or 
			 always (no (s & Green)) implies  eventually (some (s &  Green')))
}
pred __repair { ideWmmeA4gmcKodQPpF_prop6 }
check __repair { ideWmmeA4gmcKodQPpF_prop6 <=> prop6o }