open main
pred idCETbaE279RNnymTrb_prop13 {
	
  	always all t : Train | no t.pos implies always no t.pos
}
pred __repair { idCETbaE279RNnymTrb_prop13 }
check __repair { idCETbaE279RNnymTrb_prop13 <=> prop13o }