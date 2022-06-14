open main
pred idv7NQv5RNxgHmYBfvC_prop9 {
	
	always ( all t:Train | no t.pos until t.pos in Entry )	
}
pred __repair { idv7NQv5RNxgHmYBfvC_prop9 }
check __repair { idv7NQv5RNxgHmYBfvC_prop9 <=> prop9o }