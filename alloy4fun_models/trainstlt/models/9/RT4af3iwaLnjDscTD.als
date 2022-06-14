open main
pred idRT4af3iwaLnjDscTD_prop10 {
	
  	
	always (all j:Junction | some prox.j and lone((prox.j).signal :>   Green ))
}
pred __repair { idRT4af3iwaLnjDscTD_prop10 }
check __repair { idRT4af3iwaLnjDscTD_prop10 <=> prop10o }