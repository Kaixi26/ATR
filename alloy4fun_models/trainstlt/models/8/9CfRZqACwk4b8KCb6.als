open main
pred id9CfRZqACwk4b8KCb6_prop9 {
	
	all t:Train | eventually t.pos in Entry
}
pred __repair { id9CfRZqACwk4b8KCb6_prop9 }
check __repair { id9CfRZqACwk4b8KCb6_prop9 <=> prop9o }