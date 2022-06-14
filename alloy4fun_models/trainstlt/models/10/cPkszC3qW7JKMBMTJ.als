open main
pred idcPkszC3qW7JKMBMTJ_prop11 {
	
	always (all t:Train | t.pos in Track implies historically t.pos in Entry)
}
pred __repair { idcPkszC3qW7JKMBMTJ_prop11 }
check __repair { idcPkszC3qW7JKMBMTJ_prop11 <=> prop11o }