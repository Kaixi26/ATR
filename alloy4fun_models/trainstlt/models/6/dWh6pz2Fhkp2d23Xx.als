open main
pred iddWh6pz2Fhkp2d23Xx_prop7 {
	
		always all t : Train | t.pos in Entry => eventually t.pos not in Entry
}
pred __repair { iddWh6pz2Fhkp2d23Xx_prop7 }
check __repair { iddWh6pz2Fhkp2d23Xx_prop7 <=> prop7o }