open main
pred idtzhJwFmkvRwXSRYLX_prop19 {
	all f : File | f in Protected until f in Trash 
}
pred __repair { idtzhJwFmkvRwXSRYLX_prop19 }
check __repair { idtzhJwFmkvRwXSRYLX_prop19 <=> prop19o }