open main
pred idjvfZ9kFpF6JBbZYC4_prop9 {
	
	always ( all t:Train | eventually t.pos in Entry )
}
pred __repair { idjvfZ9kFpF6JBbZYC4_prop9 }
check __repair { idjvfZ9kFpF6JBbZYC4_prop9 <=> prop9o }