open main
pred id8yKmEm3ER8mqmrrnP_prop5 {
	
  	always all t: Train | (t'.pos in t.prox) 
}
pred __repair { id8yKmEm3ER8mqmrrnP_prop5 }
check __repair { id8yKmEm3ER8mqmrrnP_prop5 <=> prop5o }