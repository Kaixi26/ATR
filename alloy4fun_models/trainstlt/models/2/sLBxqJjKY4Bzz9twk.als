open main
pred idsLBxqJjKY4Bzz9twk_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { idsLBxqJjKY4Bzz9twk_prop3 }
check __repair { idsLBxqJjKY4Bzz9twk_prop3 <=> prop3o }