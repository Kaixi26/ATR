open main
pred idwuCDCiTwZyhEezyC4_prop6 {
	
	always all s : Signal | eventually s' != s
}
pred __repair { idwuCDCiTwZyhEezyC4_prop6 }
check __repair { idwuCDCiTwZyhEezyC4_prop6 <=> prop6o }