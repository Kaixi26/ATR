open main
pred id6qej7WszGSbts2CPB_prop5 {
	
	all t : Train | some (t.pos & Exit) implies  Train' = Train - t  
}
pred __repair { id6qej7WszGSbts2CPB_prop5 }
check __repair { id6qej7WszGSbts2CPB_prop5 <=> prop5o }