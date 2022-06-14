open main
pred idh4JpfXL6DSCZc8ioc_prop9 {
	
	always ( all t:Train | (no t.pos) triggered (eventually t.pos in Entry) )	
}
pred __repair { idh4JpfXL6DSCZc8ioc_prop9 }
check __repair { idh4JpfXL6DSCZc8ioc_prop9 <=> prop9o }