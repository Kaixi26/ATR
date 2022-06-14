open main
pred idNPCtc2qrQNMZG4FPg_prop2 {
	
	always ( all g : Signal | eventually g=Green)
}
pred __repair { idNPCtc2qrQNMZG4FPg_prop2 }
check __repair { idNPCtc2qrQNMZG4FPg_prop2 <=> prop2o }