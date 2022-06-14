open main
pred idKBiK3jjnqJu5QoMZc_prop9 {
	
     (all t:Train|  eventually ( before no t.pos and one t.pos:>Entry) )
	 
}
pred __repair { idKBiK3jjnqJu5QoMZc_prop9 }
check __repair { idKBiK3jjnqJu5QoMZc_prop9 <=> prop9o }