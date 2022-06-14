open main
pred id6einwgA9fcsA6BXdS_prop9 {
	
   always  (all t:Train|  once(no t.pos => after one t.pos:>Entry) )
	 
}
pred __repair { id6einwgA9fcsA6BXdS_prop9 }
check __repair { id6einwgA9fcsA6BXdS_prop9 <=> prop9o }