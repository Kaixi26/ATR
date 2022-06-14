open main
pred idk3MWgFeZfCfT9NbKK_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { idk3MWgFeZfCfT9NbKK_prop3 }
check __repair { idk3MWgFeZfCfT9NbKK_prop3 <=> prop3o }