open main
pred iddWLZpcKSFW4JHvWR7_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { iddWLZpcKSFW4JHvWR7_prop3 }
check __repair { iddWLZpcKSFW4JHvWR7_prop3 <=> prop3o }