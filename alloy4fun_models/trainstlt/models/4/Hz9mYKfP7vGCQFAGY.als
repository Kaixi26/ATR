open main
pred idHz9mYKfP7vGCQFAGY_prop5 {
	
  always all t: Train | no t.pos & Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { idHz9mYKfP7vGCQFAGY_prop5 }
check __repair { idHz9mYKfP7vGCQFAGY_prop5 <=> prop5o }