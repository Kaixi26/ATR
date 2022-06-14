open main
pred idyYKR89wrgjpDijF5C_prop9 {
	
     (all t:Train|  eventually ( some t.pos and one t.pos:>Entry) )
	 
}
pred __repair { idyYKR89wrgjpDijF5C_prop9 }
check __repair { idyYKR89wrgjpDijF5C_prop9 <=> prop9o }