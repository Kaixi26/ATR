open main
pred idds7iQDekxHJ3Xm7hQ_prop6 {
	
	always (all  s : Signal |  no (s & Green) implies s' = Green else s' not in Green)
}
pred __repair { idds7iQDekxHJ3Xm7hQ_prop6 }
check __repair { idds7iQDekxHJ3Xm7hQ_prop6 <=> prop6o }