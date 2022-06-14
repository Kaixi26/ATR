open main
pred idDLfgqgehLztgbf68Y_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos and t->tk not in pos implies always t->tk not in pos 
}
pred __repair { idDLfgqgehLztgbf68Y_prop3 }
check __repair { idDLfgqgehLztgbf68Y_prop3 <=> prop3o }