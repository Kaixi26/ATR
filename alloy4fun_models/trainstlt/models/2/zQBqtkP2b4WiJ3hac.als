open main
pred idzQBqtkP2b4WiJ3hac_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { idzQBqtkP2b4WiJ3hac_prop3 }
check __repair { idzQBqtkP2b4WiJ3hac_prop3 <=> prop3o }