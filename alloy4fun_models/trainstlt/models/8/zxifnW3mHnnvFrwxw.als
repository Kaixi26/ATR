open main
pred idzxifnW3mHnnvFrwxw_prop9 {
	
	always ( all t:Train | some Track implies eventually t.pos in Entry )
}
pred __repair { idzxifnW3mHnnvFrwxw_prop9 }
check __repair { idzxifnW3mHnnvFrwxw_prop9 <=> prop9o }