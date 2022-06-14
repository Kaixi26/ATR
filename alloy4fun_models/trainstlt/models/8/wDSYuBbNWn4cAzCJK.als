open main
pred idwDSYuBbNWn4cAzCJK_prop9 {
	
	  all t:Train | some Track and (t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   )
}
pred __repair { idwDSYuBbNWn4cAzCJK_prop9 }
check __repair { idwDSYuBbNWn4cAzCJK_prop9 <=> prop9o }