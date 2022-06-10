open main
pred idFEt5y4p3KBYtvuFPp_prop8 {
	all f:File | some link.f implies eventually ( f in Trash)
}
pred __repair { idFEt5y4p3KBYtvuFPp_prop8 }
check __repair { idFEt5y4p3KBYtvuFPp_prop8 <=> prop8o }