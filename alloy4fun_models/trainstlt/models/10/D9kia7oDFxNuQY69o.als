open main
pred idD9kia7oDFxNuQY69o_prop11 {
	
	always ( all t:Train| some t.pos and historically t.pos in Entry) 
}
pred __repair { idD9kia7oDFxNuQY69o_prop11 }
check __repair { idD9kia7oDFxNuQY69o_prop11 <=> prop11o }