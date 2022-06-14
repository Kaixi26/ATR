open main
pred idnYBNMEmyhKjjfCDxH_prop7 {
	
	 (all t:Train | some (t.pos & Entry ) implies   eventually some (t.pos & Exit) )
}
pred __repair { idnYBNMEmyhKjjfCDxH_prop7 }
check __repair { idnYBNMEmyhKjjfCDxH_prop7 <=> prop7o }