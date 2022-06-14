open main
pred idmzBpNxf8aZJvNKFB2_prop6 {
	
	always all s : Signal | (s in Green implies s' not in Green) or 
   (s not in Green implies s' in Green)
}
pred __repair { idmzBpNxf8aZJvNKFB2_prop6 }
check __repair { idmzBpNxf8aZJvNKFB2_prop6 <=> prop6o }