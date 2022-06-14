open main
pred idsp45rNqF9y6T9R68v_prop9 {
	
	 (all t:Train | eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { idsp45rNqF9y6T9R68v_prop9 }
check __repair { idsp45rNqF9y6T9R68v_prop9 <=> prop9o }