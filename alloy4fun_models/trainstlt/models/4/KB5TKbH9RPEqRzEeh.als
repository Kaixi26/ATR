open main
pred idKB5TKbH9RPEqRzEeh_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies no t.pos')
      	always (t.pos in Track-Exit  implies  (t.pos'in  (t.pos.prox) )) 
    }
  	
}
pred __repair { idKB5TKbH9RPEqRzEeh_prop5 }
check __repair { idKB5TKbH9RPEqRzEeh_prop5 <=> prop5o }