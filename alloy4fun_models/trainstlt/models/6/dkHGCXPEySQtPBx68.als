open main
pred iddkHGCXPEySQtPBx68_prop7 {
	
	all t : Train | always (eventually t.pos not in Entry)
}
pred __repair { iddkHGCXPEySQtPBx68_prop7 }
check __repair { iddkHGCXPEySQtPBx68_prop7 <=> prop7o }