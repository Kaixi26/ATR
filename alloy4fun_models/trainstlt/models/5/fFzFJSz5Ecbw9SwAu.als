open main
pred idfFzFJSz5Ecbw9SwAu_prop6 {
	
	always ( all s : Signal { s in Green => s' not in Green
  							  s not in Green => s' in Green
  							}
  			)
}
pred __repair { idfFzFJSz5Ecbw9SwAu_prop6 }
check __repair { idfFzFJSz5Ecbw9SwAu_prop6 <=> prop6o }