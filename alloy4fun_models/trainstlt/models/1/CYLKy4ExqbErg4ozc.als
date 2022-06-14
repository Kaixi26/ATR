open main
pred idCYLKy4ExqbErg4ozc_prop2 {
	
	eventually(all t:Track | eventually t.signal = Green)
}
pred __repair { idCYLKy4ExqbErg4ozc_prop2 }
check __repair { idCYLKy4ExqbErg4ozc_prop2 <=> prop2o }