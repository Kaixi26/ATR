open main
pred idAsLASYqFq3tZestST_prop11 {
	
	always ( all t:Train | some t.pos :> Track implies historically ( t.pos in Entry) )
}
pred __repair { idAsLASYqFq3tZestST_prop11 }
check __repair { idAsLASYqFq3tZestST_prop11 <=> prop11o }