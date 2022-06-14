open main
pred idktDJL66BPK7H7zni5_prop9 {
	
	always ( all t:Train | historically no t.pos implies eventually t.pos in Entry )	
}
pred __repair { idktDJL66BPK7H7zni5_prop9 }
check __repair { idktDJL66BPK7H7zni5_prop9 <=> prop9o }