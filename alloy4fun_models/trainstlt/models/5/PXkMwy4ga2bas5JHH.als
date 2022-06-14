open main
pred idPXkMwy4ga2bas5JHH_prop6 {
	
	always (all s:Signal | always (s in Green) implies eventually (s not in Green ) or 
			 			always s not in Green implies  eventually (s in  Green) )
}
pred __repair { idPXkMwy4ga2bas5JHH_prop6 }
check __repair { idPXkMwy4ga2bas5JHH_prop6 <=> prop6o }