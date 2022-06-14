open main
pred idBzFvbHtxhWQN8DXEK_prop9 {
	
		always ( all t:Train | eventually t.pos in Entry)
}
pred __repair { idBzFvbHtxhWQN8DXEK_prop9 }
check __repair { idBzFvbHtxhWQN8DXEK_prop9 <=> prop9o }