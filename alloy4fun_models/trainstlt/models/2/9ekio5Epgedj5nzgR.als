open main
pred id9ekio5Epgedj5nzgR_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { id9ekio5Epgedj5nzgR_prop3 }
check __repair { id9ekio5Epgedj5nzgR_prop3 <=> prop3o }