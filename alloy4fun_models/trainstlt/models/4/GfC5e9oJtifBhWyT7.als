open main
pred idGfC5e9oJtifBhWyT7_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies eventually no t.pos)
    always (t.pos in (Track-Exit)  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idGfC5e9oJtifBhWyT7_prop5 }
check __repair { idGfC5e9oJtifBhWyT7_prop5 <=> prop5o }