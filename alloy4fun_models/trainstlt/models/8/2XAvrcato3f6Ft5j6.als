open main
pred id2XAvrcato3f6Ft5j6_prop9 {
	
	  all t:Train | some Track and t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   
}
pred __repair { id2XAvrcato3f6Ft5j6_prop9 }
check __repair { id2XAvrcato3f6Ft5j6_prop9 <=> prop9o }