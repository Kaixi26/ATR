open main
pred idX7rHTL92jbHxfvEPX_prop20 {
	always all f : File | always f in Trash since f not in Protected 
}
pred __repair { idX7rHTL92jbHxfvEPX_prop20 }
check __repair { idX7rHTL92jbHxfvEPX_prop20 <=> prop20o }