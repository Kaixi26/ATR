open main
pred id2BaxL5ecmBNfq6BBd_prop6 {
	
	always (all s:Signal | always (s in Green) implies eventually (s not in Green ) or 
			 			always s not in Green implies  eventually (s in  Green) )
}
pred __repair { id2BaxL5ecmBNfq6BBd_prop6 }
check __repair { id2BaxL5ecmBNfq6BBd_prop6 <=> prop6o }