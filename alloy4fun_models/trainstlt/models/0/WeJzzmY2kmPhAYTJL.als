open main
pred idWeJzzmY2kmPhAYTJL_prop1 {
	
	 (all s:Signal | s not in Green) until (some s:Signal | s in Green)
}
pred __repair { idWeJzzmY2kmPhAYTJL_prop1 }
check __repair { idWeJzzmY2kmPhAYTJL_prop1 <=> prop1o }