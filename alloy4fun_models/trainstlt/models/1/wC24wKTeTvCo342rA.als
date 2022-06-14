open main
pred idwC24wKTeTvCo342rA_prop2 {
	
	all g : Track.signal | no (g & Green) implies eventually g = Green
}
pred __repair { idwC24wKTeTvCo342rA_prop2 }
check __repair { idwC24wKTeTvCo342rA_prop2 <=> prop2o }