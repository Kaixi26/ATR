open main
pred idaDdZuuLH6SEsXp5gp_prop9 {
	
	always ( all t:Train | (no t.pos) triggered (t.pos' in Entry) )	
}
pred __repair { idaDdZuuLH6SEsXp5gp_prop9 }
check __repair { idaDdZuuLH6SEsXp5gp_prop9 <=> prop9o }