open main
pred id4NSwuo4gkLvZfpFpL_prop3 {
	
 	always pos = pos and (all t : Train | t.pos not in Track implies always t.pos not in Track)
}
pred __repair { id4NSwuo4gkLvZfpFpL_prop3 }
check __repair { id4NSwuo4gkLvZfpFpL_prop3 <=> prop3o }