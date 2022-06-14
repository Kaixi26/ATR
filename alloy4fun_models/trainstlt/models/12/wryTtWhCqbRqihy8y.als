open main
pred idwryTtWhCqbRqihy8y_prop13 {
	
	 ( all t:Train | no t.pos since  no t.pos)
}
pred __repair { idwryTtWhCqbRqihy8y_prop13 }
check __repair { idwryTtWhCqbRqihy8y_prop13 <=> prop13o }