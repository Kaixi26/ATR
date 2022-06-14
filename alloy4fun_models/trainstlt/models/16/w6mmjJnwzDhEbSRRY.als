open main
pred idw6mmjJnwzDhEbSRRY_prop17 {
	
	always (some t:Train | before historically no Train.pos and eventually(t.pos in Exit and historically no Exit))
}
pred __repair { idw6mmjJnwzDhEbSRRY_prop17 }
check __repair { idw6mmjJnwzDhEbSRRY_prop17 <=> prop17o }