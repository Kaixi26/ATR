open main
pred idX827SPYqu2tp5bzMA_prop6 {
	
	always some s : Signal | (s in Green implies s' not in Green) or 
   (s not in Green implies s' in Green)
}
pred __repair { idX827SPYqu2tp5bzMA_prop6 }
check __repair { idX827SPYqu2tp5bzMA_prop6 <=> prop6o }