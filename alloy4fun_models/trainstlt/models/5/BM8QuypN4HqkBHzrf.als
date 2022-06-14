open main
pred idBM8QuypN4HqkBHzrf_prop6 {
	
	all  s : Signal | always (no (s & Green) implies s' = Green else s' not in Green)
}
pred __repair { idBM8QuypN4HqkBHzrf_prop6 }
check __repair { idBM8QuypN4HqkBHzrf_prop6 <=> prop6o }