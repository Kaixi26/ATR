open main
pred id6Gp4JDyXSFJgqNJTk_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos or t->tk not in pos implies always t->tk in pos
}
pred __repair { id6Gp4JDyXSFJgqNJTk_prop3 }
check __repair { id6Gp4JDyXSFJgqNJTk_prop3 <=> prop3o }