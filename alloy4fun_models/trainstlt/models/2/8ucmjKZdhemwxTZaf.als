open main
pred id8ucmjKZdhemwxTZaf_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { id8ucmjKZdhemwxTZaf_prop3 }
check __repair { id8ucmjKZdhemwxTZaf_prop3 <=> prop3o }