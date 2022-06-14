open main
pred iduWJfKsXp3u24qNYXb_prop3 {
	
  all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { iduWJfKsXp3u24qNYXb_prop3 }
check __repair { iduWJfKsXp3u24qNYXb_prop3 <=> prop3o }