open main
pred iduRZznobf93EuaCoie_prop9 {
	
	  (all t:Train |  eventually ( some t.pos and t.pos in Entry) ) 
}
pred __repair { iduRZznobf93EuaCoie_prop9 }
check __repair { iduRZznobf93EuaCoie_prop9 <=> prop9o }