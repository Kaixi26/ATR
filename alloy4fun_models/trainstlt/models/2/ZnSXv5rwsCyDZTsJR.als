open main
pred idZnSXv5rwsCyDZTsJR_prop3 {
	
	 all t : Train , x : t.pos | no x.prox
}
pred __repair { idZnSXv5rwsCyDZTsJR_prop3 }
check __repair { idZnSXv5rwsCyDZTsJR_prop3 <=> prop3o }