open main
pred idJshM6adtqt7jw8u2H_prop5 {
	
  always all t: Train | no t.pos & Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { idJshM6adtqt7jw8u2H_prop5 }
check __repair { idJshM6adtqt7jw8u2H_prop5 <=> prop5o }