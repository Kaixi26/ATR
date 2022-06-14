open main
pred id6LYo3fDNLaCW39n9K_prop4 {
	
	all disj s1, s2 : Signal-Entry | always s1.pos != s2.pos
}
pred __repair { id6LYo3fDNLaCW39n9K_prop4 }
check __repair { id6LYo3fDNLaCW39n9K_prop4 <=> prop4o }