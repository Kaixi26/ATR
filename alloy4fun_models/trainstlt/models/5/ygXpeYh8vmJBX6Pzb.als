open main
pred idygXpeYh8vmJBX6Pzb_prop6 {
	
	always (some s:Signal |  (s in Green implies always (no (s &  Green'))) or 
			no (s & Green) implies always (some (s &  Green')))

}
pred __repair { idygXpeYh8vmJBX6Pzb_prop6 }
check __repair { idygXpeYh8vmJBX6Pzb_prop6 <=> prop6o }