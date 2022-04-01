open main
pred idngGyyCGMPMf7EGsJ5_prop20 {
	always some f : Protected | f not in Protected since f in Trash  
}
pred __repair { idngGyyCGMPMf7EGsJ5_prop20 }
check __repair { idngGyyCGMPMf7EGsJ5_prop20 <=> prop20o }