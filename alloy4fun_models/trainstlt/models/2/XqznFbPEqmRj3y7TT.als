open main
pred idXqznFbPEqmRj3y7TT_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos and t->tk not in pos implies always t->tk not in pos
}
pred __repair { idXqznFbPEqmRj3y7TT_prop3 }
check __repair { idXqznFbPEqmRj3y7TT_prop3 <=> prop3o }