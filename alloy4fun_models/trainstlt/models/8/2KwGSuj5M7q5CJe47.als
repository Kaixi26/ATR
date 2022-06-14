open main
pred id2KwGSuj5M7q5CJe47_prop9 {
	
	all t:Train | some tk:Entry | eventually (t->tk in pos and before no t.pos)
}
pred __repair { id2KwGSuj5M7q5CJe47_prop9 }
check __repair { id2KwGSuj5M7q5CJe47_prop9 <=> prop9o }