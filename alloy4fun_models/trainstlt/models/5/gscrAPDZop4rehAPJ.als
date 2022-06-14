open main
pred idgscrAPDZop4rehAPJ_prop6 {
	
	all s : Signal | no (s & Green) implies s' = Green else s' not in Green
}
pred __repair { idgscrAPDZop4rehAPJ_prop6 }
check __repair { idgscrAPDZop4rehAPJ_prop6 <=> prop6o }