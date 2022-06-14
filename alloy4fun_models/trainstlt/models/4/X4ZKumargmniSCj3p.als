open main
pred idX4ZKumargmniSCj3p_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox or some Exit & t.pos.next => t.pos' in Exit
}
pred __repair { idX4ZKumargmniSCj3p_prop5 }
check __repair { idX4ZKumargmniSCj3p_prop5 <=> prop5o }