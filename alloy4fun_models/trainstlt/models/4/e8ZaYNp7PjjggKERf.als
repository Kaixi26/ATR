open main
pred ide8ZaYNp7PjjggKERf_prop5 {
	
 always  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { ide8ZaYNp7PjjggKERf_prop5 }
check __repair { ide8ZaYNp7PjjggKERf_prop5 <=> prop5o }