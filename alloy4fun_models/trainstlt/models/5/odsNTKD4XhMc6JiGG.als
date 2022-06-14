open main
pred idodsNTKD4XhMc6JiGG_prop6 {
	
	all t : Track | always ((some t.signal) implies (t.signal != t.signal'))
}
pred __repair { idodsNTKD4XhMc6JiGG_prop6 }
check __repair { idodsNTKD4XhMc6JiGG_prop6 <=> prop6o }