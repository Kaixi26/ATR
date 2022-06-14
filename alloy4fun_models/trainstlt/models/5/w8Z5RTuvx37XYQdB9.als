open main
pred idw8Z5RTuvx37XYQdB9_prop6 {
	
	always (all s:Signal | always (s in Green) implies eventually (s not in Green ) or 
			 			always s not in Green implies  eventually (s in  Green) )
}
pred __repair { idw8Z5RTuvx37XYQdB9_prop6 }
check __repair { idw8Z5RTuvx37XYQdB9_prop6 <=> prop6o }