open main
pred idh8KTJ3QpXaLeQ4sAf_prop7 {
	
	all t : Train | eventually no t.pos
}
pred __repair { idh8KTJ3QpXaLeQ4sAf_prop7 }
check __repair { idh8KTJ3QpXaLeQ4sAf_prop7 <=> prop7o }