open main
pred idpZJed6tqKEFPzbZ6v_prop16 {
	always ((some Protected') implies (historically Protected in Protected'))
}
pred __repair { idpZJed6tqKEFPzbZ6v_prop16 }
check __repair { idpZJed6tqKEFPzbZ6v_prop16 <=> prop16o }