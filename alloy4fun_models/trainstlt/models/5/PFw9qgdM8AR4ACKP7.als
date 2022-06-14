open main
pred idPFw9qgdM8AR4ACKP7_prop6 {
	
	always all s : Signal | s in Green implies s' not in Green
}
pred __repair { idPFw9qgdM8AR4ACKP7_prop6 }
check __repair { idPFw9qgdM8AR4ACKP7_prop6 <=> prop6o }