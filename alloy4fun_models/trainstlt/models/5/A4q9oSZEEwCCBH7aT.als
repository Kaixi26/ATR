open main
pred idA4q9oSZEEwCCBH7aT_prop6 {
	
	always ( all s : Signal | (s in Green implies s' not in Green) or (s not in Green implies s' in Green) )
}
pred __repair { idA4q9oSZEEwCCBH7aT_prop6 }
check __repair { idA4q9oSZEEwCCBH7aT_prop6 <=> prop6o }