open main
pred idpJDufLikCrtFB56ej_prop10 {
  	always all f:File | f in Protected implies always f in Protected
	
}
pred __repair { idpJDufLikCrtFB56ej_prop10 }
check __repair { idpJDufLikCrtFB56ej_prop10 <=> prop10o }