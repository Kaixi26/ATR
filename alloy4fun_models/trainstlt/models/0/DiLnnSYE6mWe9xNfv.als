open main
pred idDiLnnSYE6mWe9xNfv_prop1 {
	
	 all s:Signal | s not in Green until (some s:Signal | s in Green)
}
pred __repair { idDiLnnSYE6mWe9xNfv_prop1 }
check __repair { idDiLnnSYE6mWe9xNfv_prop1 <=> prop1o }