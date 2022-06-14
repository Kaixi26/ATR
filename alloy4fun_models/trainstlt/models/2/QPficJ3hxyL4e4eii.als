open main
pred idQPficJ3hxyL4e4eii_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos and t->tk not in pos implies always t->tk in pos
}
pred __repair { idQPficJ3hxyL4e4eii_prop3 }
check __repair { idQPficJ3hxyL4e4eii_prop3 <=> prop3o }