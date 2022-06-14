open main
pred idFoT3cytj8eDf962nb_prop5 {
	
	always all t : Train | t.pos' in t.pos.next 
}
pred __repair { idFoT3cytj8eDf962nb_prop5 }
check __repair { idFoT3cytj8eDf962nb_prop5 <=> prop5o }