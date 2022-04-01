open main
pred idodmCnSvEWgrnAazbs_prop10 {
	always (all f:Protected | f in Protected)
}
pred __repair { idodmCnSvEWgrnAazbs_prop10 }
check __repair { idodmCnSvEWgrnAazbs_prop10 <=> prop10o }