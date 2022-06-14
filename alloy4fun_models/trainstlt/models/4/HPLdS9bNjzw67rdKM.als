open main
pred idHPLdS9bNjzw67rdKM_prop5 {
	
	all t : Train.pos | some (t & Exit) implies  no t'  
}
pred __repair { idHPLdS9bNjzw67rdKM_prop5 }
check __repair { idHPLdS9bNjzw67rdKM_prop5 <=> prop5o }