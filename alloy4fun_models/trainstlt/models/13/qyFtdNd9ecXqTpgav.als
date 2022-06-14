open main
pred idqyFtdNd9ecXqTpgav_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) ) implies (eventually t.pos'!=t.pos and (t.pos.signal in  Signal-Green) ))

}
pred __repair { idqyFtdNd9ecXqTpgav_prop14 }
check __repair { idqyFtdNd9ecXqTpgav_prop14 <=> prop14o }