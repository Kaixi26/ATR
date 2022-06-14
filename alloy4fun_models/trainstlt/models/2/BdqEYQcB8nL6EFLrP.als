open main
pred idBdqEYQcB8nL6EFLrP_prop3 {
	
  always all t: Train, tk: Track | one t.pos and t->tk in pos implies always t->tk in pos
}
pred __repair { idBdqEYQcB8nL6EFLrP_prop3 }
check __repair { idBdqEYQcB8nL6EFLrP_prop3 <=> prop3o }