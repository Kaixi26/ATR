open main
pred id5Tj2bNEgdP2q5582v_prop12 {
	
  	some f:File | f in Trash since f not in Trash
}
pred __repair { id5Tj2bNEgdP2q5582v_prop12 }
check __repair { id5Tj2bNEgdP2q5582v_prop12 <=> prop12o }