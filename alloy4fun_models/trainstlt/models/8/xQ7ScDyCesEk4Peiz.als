open main
pred idxQ7ScDyCesEk4Peiz_prop9 {
	
	always ( all t:Train | some Track implies eventually (some t.pos :> Entry) )
}
pred __repair { idxQ7ScDyCesEk4Peiz_prop9 }
check __repair { idxQ7ScDyCesEk4Peiz_prop9 <=> prop9o }