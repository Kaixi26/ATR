open main
pred id4rvzwoeieEb6orma9_prop2 {
	
	 all s : Signal | eventually s=Green
}
pred __repair { id4rvzwoeieEb6orma9_prop2 }
check __repair { id4rvzwoeieEb6orma9_prop2 <=> prop2o }