open main
pred id8kf3HGTXJePATtsJi_prop7 {
	
	all t : Train | eventually t.pos in Exit
}
pred __repair { id8kf3HGTXJePATtsJi_prop7 }
check __repair { id8kf3HGTXJePATtsJi_prop7 <=> prop7o }