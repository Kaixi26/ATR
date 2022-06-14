open main
pred idwCMQTqdnfKxNneKvg_prop6 {
	
	all t : Track |always( t.signal' != t.signal)
}
pred __repair { idwCMQTqdnfKxNneKvg_prop6 }
check __repair { idwCMQTqdnfKxNneKvg_prop6 <=> prop6o }