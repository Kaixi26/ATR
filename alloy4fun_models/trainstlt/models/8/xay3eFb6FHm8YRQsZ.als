open main
pred idxay3eFb6FHm8YRQsZ_prop9 {
	
	always ( all t:Train |no t.pos implies  eventually (t.pos in Entry) )
}
pred __repair { idxay3eFb6FHm8YRQsZ_prop9 }
check __repair { idxay3eFb6FHm8YRQsZ_prop9 <=> prop9o }