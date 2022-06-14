open main
pred idhR6xXsXco5e9GdZxY_prop9 {
	
	 (all t:Train |some (t.pos.prox & Entry )implies  eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { idhR6xXsXco5e9GdZxY_prop9 }
check __repair { idhR6xXsXco5e9GdZxY_prop9 <=> prop9o }