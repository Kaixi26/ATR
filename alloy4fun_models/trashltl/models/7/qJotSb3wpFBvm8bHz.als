open main
pred idqJotSb3wpFBvm8bHz_prop8 {
	 all f:File| eventually  f.*link    in Trash
}
pred __repair { idqJotSb3wpFBvm8bHz_prop8 }
check __repair { idqJotSb3wpFBvm8bHz_prop8 <=> prop8o }