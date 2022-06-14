open main
pred idWfzCmS7qDvrJjsPMi_prop15 {
	
	always eventually (Train.pos)' != Train.pos 
}
pred __repair { idWfzCmS7qDvrJjsPMi_prop15 }
check __repair { idWfzCmS7qDvrJjsPMi_prop15 <=> prop15o }