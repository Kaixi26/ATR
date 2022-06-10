open main
pred ida5FD4nsczCrzBQiSx_prop11 {
	all a : File - (File & Protected) | (a not in Protected) implies  after (a in Protected) 
}
pred __repair { ida5FD4nsczCrzBQiSx_prop11 }
check __repair { ida5FD4nsczCrzBQiSx_prop11 <=> prop11o }