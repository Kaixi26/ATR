open main
pred idKrzvSrC9p9wEB6yJK_prop9 {
	
	always ( all t:Train | some Entry implies eventually (no t.pos until t.pos in Entry))
}
pred __repair { idKrzvSrC9p9wEB6yJK_prop9 }
check __repair { idKrzvSrC9p9wEB6yJK_prop9 <=> prop9o }