open main
pred idTx2Gqm3JkMDQ5JNNY_prop11 {
	
	
  always ( all t:Train| some t.pos implies once t.pos in Entry)
}
pred __repair { idTx2Gqm3JkMDQ5JNNY_prop11 }
check __repair { idTx2Gqm3JkMDQ5JNNY_prop11 <=> prop11o }