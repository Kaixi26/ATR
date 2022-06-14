open main
pred idmF8fBmDQS7KKoiY9z_prop6 {
	
	all s : Signal | always (s in Green implies s' not in Green) or always
   (s not in Green implies s' in Green)
}
pred __repair { idmF8fBmDQS7KKoiY9z_prop6 }
check __repair { idmF8fBmDQS7KKoiY9z_prop6 <=> prop6o }