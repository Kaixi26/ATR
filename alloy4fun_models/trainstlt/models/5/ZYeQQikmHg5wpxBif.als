open main
pred idZYeQQikmHg5wpxBif_prop6 {
	
	always ( all s : Signal { s in Green => Green' = Green - s
  							  s not in Green => Green' = Green + s
  							}
  			)
}
pred __repair { idZYeQQikmHg5wpxBif_prop6 }
check __repair { idZYeQQikmHg5wpxBif_prop6 <=> prop6o }