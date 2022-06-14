open main
pred idPWCJcnms843QPTf3R_prop3 {
	
	always( no t:Track | t in t.prox or t in prox.t)
}
pred __repair { idPWCJcnms843QPTf3R_prop3 }
check __repair { idPWCJcnms843QPTf3R_prop3 <=> prop3o }