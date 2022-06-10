open main
pred idHMgonMgq6ufEPWHjj_prop20 {
	always all f : File |  f in Trash since f not in Protected  
}
pred __repair { idHMgonMgq6ufEPWHjj_prop20 }
check __repair { idHMgonMgq6ufEPWHjj_prop20 <=> prop20o }