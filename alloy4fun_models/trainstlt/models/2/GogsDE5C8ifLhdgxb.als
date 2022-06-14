open main
pred idGogsDE5C8ifLhdgxb_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
}
pred __repair { idGogsDE5C8ifLhdgxb_prop3 }
check __repair { idGogsDE5C8ifLhdgxb_prop3 <=> prop3o }