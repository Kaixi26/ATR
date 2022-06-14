open main
pred idmckLa2gApeQ6TeGAz_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos or t->tk not in pos implies always t->tk not in pos
}
pred __repair { idmckLa2gApeQ6TeGAz_prop3 }
check __repair { idmckLa2gApeQ6TeGAz_prop3 <=> prop3o }