open main
pred idDRg6tLdWBuuFfnGfh_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos or t->tk not in pos implies always t->tk not in pos 
}
pred __repair { idDRg6tLdWBuuFfnGfh_prop3 }
check __repair { idDRg6tLdWBuuFfnGfh_prop3 <=> prop3o }