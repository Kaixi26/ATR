open main
pred idj3D8FYWD9pgMNjKKr_prop4 {
	
	all t1,t2 : Train | always no (t1.pos & t2.pos)
}
pred __repair { idj3D8FYWD9pgMNjKKr_prop4 }
check __repair { idj3D8FYWD9pgMNjKKr_prop4 <=> prop4o }