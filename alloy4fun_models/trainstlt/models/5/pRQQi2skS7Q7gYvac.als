open main
pred idpRQQi2skS7Q7gYvac_prop6 {
	
	always Signal & Green not in Signal' & Green' or Signal - Green in Signal' & Green'
}
pred __repair { idpRQQi2skS7Q7gYvac_prop6 }
check __repair { idpRQQi2skS7Q7gYvac_prop6 <=> prop6o }