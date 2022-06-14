open main
pred idK3kqsbyRZGhMy4RGN_prop5 {
	
	always(
    	all t:Train{
      		no t.pos :> Exit => eventually(t.pos in t.pos.prox)
          	some t.pos :> Exit => eventually(no t.pos)
      	}  
    )
}
pred __repair { idK3kqsbyRZGhMy4RGN_prop5 }
check __repair { idK3kqsbyRZGhMy4RGN_prop5 <=> prop5o }