open main
pred idb99is78fvJ7RNFERg_prop2 {
	
	eventually (all s:Signal | eventually Green in s)
}
pred __repair { idb99is78fvJ7RNFERg_prop2 }
check __repair { idb99is78fvJ7RNFERg_prop2 <=> prop2o }