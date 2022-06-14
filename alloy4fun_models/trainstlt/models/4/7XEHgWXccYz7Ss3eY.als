open main
pred id7XEHgWXccYz7Ss3eY_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  t.pos'= t.pos)
      	always (t.pos in Entry  implies  (t.pos'in  (t.pos.prox) )) 
    }
  	
}
pred __repair { id7XEHgWXccYz7Ss3eY_prop5 }
check __repair { id7XEHgWXccYz7Ss3eY_prop5 <=> prop5o }