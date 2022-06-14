open main
pred idx6DdzCStZ73SduoCY_prop3 {
	
  	all t,tt:Track | t->tt in prox implies always t->tt in prox
}
pred __repair { idx6DdzCStZ73SduoCY_prop3 }
check __repair { idx6DdzCStZ73SduoCY_prop3 <=> prop3o }