open main
pred id6sq6CXRyDLvRJLaDD_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies after t->tk in pos
}
pred __repair { id6sq6CXRyDLvRJLaDD_prop3 }
check __repair { id6sq6CXRyDLvRJLaDD_prop3 <=> prop3o }