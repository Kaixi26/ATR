open main
pred idAwjDRqi8Rx5iGbs9W_prop9 {
	
	all t:Train | some t.pos implies eventually t.pos in Entry
}
pred __repair { idAwjDRqi8Rx5iGbs9W_prop9 }
check __repair { idAwjDRqi8Rx5iGbs9W_prop9 <=> prop9o }