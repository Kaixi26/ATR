open main
pred idFJarGHWnfz9qwr7k9_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { idFJarGHWnfz9qwr7k9_prop3 }
check __repair { idFJarGHWnfz9qwr7k9_prop3 <=> prop3o }