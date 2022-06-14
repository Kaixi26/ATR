open main
pred idyLF46scrfj7ANFkTb_prop7 {
	
	always (all t :Train|t in Entry implies  eventually  t.pos in Exit)
}
pred __repair { idyLF46scrfj7ANFkTb_prop7 }
check __repair { idyLF46scrfj7ANFkTb_prop7 <=> prop7o }